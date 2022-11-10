import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:hifive/repositories/app_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  // final AuthenticationRepository _authenticationRepository;
  final AppRepository _appRepository;

  LoginCubit(this._appRepository) : super(const LoginState());

/**
 * 로그인 처리 
 */
  Future<void> logIn() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    try {
      final result = await _appRepository.logInWithUserIdAndPassword(
        userId: state.userId.value,
        password: state.password.value,
      );

      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on LoginFailureException catch (e) {
      emit(state.copyWith(
          errorMessage: e.message, status: FormzStatus.submissionFailure));
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }

  Future<void> logInWithGoogle() async {
    // emit(state.copyWith(status: FormzStatus.submissionInProgress));
    // try {
    //   await _appRepository.logInWithGoogle();
    //   emit(state.copyWith(status: FormzStatus.submissionSuccess));
    // } on LogInWithGoogleFailure catch (e) {
    //   emit(
    //     state.copyWith(
    //       errorMessage: e.message,
    //       status: FormzStatus.submissionFailure,
    //     ),
    //   );
    // } catch (_) {
    //   emit(state.copyWith(status: FormzStatus.submissionFailure));
    // }
  }

  void userIdChanged(String value) {
    final userId = UserId.dirty(value);
    emit(
      state.copyWith(
        userId: userId,
        status: Formz.validate([userId, state.password]),
      ),
    );
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([email, state.password]),
      ),
    );
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([state.userId, password]),
      ),
    );
  }
}
