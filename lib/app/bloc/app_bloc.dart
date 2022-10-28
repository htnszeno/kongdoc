import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/enums/app_status.dart';
import 'package:hifive/models/user_model.dart';
import 'package:hifive/repositories/app/app_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  // final AuthenticationRepository _authenticationRepository;
  final AppRepository _appRepository;
  late final StreamSubscription<User> _userSubscription;
  AppBloc({required AppRepository appRepository})
      : _appRepository = appRepository,
        super(appRepository.currentUser.isNotEmpty
            ? AppState.authenticated(appRepository.currentUser)
            : const AppState.unauthenticated()) {
    on(
      (event, emit) =>
          {print('============= event ${event} ##########################')},
    );

    on<UserIdChange>((event, emit) {
      print("user change....");
    });

    on<AppUserChanged>(_onUserChanged);

    on<AppLogoutRequested>(_onLogoutRequested);

    _userSubscription = _appRepository.user.listen((user) {
      add(AppUserChanged(user));
    });

    on<AppActiveLoginRequested>(_onAppActiveLogin);
  }

  void _onAppActiveLogin(
      AppActiveLoginRequested event, Emitter<AppState> emit) async {
    final initData = await _appRepository.getInit();
    if (initData['TYPE'] == 200130) {
      final prefs = await SharedPreferences.getInstance();
      if (prefs.getString('USER_ID')?.isNotEmpty == true) {
        final result = await _appRepository.logInWithUserIdAndPassword(
          userId: prefs.getString('USER_ID').toString(),
          password: prefs.getString('PW').toString(),
        );
      }
    }
  }

  void _onLogoutRequested(AppLogoutRequested event, Emitter<AppState> emit) {
    unawaited(_appRepository.logOut());
    add(const AppUserChanged(User.empty));
  }

  void _onUserChanged(AppUserChanged event, Emitter<AppState> emit) {
    emit(
      event.user.isNotEmpty
          ? AppState.authenticated(event.user)
          : const AppState.unauthenticated(),
    );
  }
}
