// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

// ignore_for_file: sort_constructors_first

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/app/bloc/app_bloc.dart';
import 'package:hifive/enums/app_status.dart';
import 'package:hifive/pages/login/view/view.dart';
import 'package:hifive/pages/main_page.dart';
import 'package:hifive/repositories/app_repository.dart';
import 'package:hifive/repositories/note/note_repository.dart';
import 'package:hifive/theme.dart';

class App extends StatelessWidget {
  final AppRepository _appRepository;
  final NoteRepository _noteRepository;
  const App({
    super.key,
    required AppRepository appRepository,
    required NoteRepository noteRepository,
  })  : _appRepository = appRepository,
        _noteRepository = noteRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: _noteRepository,
        ),
      ],
      child: RepositoryProvider.value(
        value: _appRepository,
        child: BlocProvider(
          create: (_) => AppBloc(appRepository: _appRepository),
          child: const AppView(),
        ),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  bool isAppInactive = false;
  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  void initState() {
    super.initState();
    // @todo : 추후 사용 가능할때 ..
    // WidgetsBinding.instance.addObserver(
    //   LifecycleEventHandler(
    //     resumeCallBack: () async => setState(() {
    //       setState(() {
    //         isAppInactive = false;
    //       });
    //     }),
    //     suspendingCallBack: () async {
    //       setState(() {
    //         isAppInactive = true;
    //       });
    //     },
    //   ),
    // );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: theme,
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigatorKey,
        builder: (context, child) {
          return BlocListener<AppBloc, AppState>(
            listener: (context, state) {
              switch (state.status) {
                case AppStatus.authenticated:
                  _navigator.pushAndRemoveUntil<void>(
                    MainPage.route(),
                    (route) => false,
                  );
                  break;
                case AppStatus.unauthenticated:
                  _navigator.pushAndRemoveUntil<void>(
                    LoginPage.route(),
                    (route) => false,
                  );
                  break;
                case AppStatus.unknown:
                  _navigator.pushAndRemoveUntil<void>(
                    SplashPage.route(),
                    (route) => false,
                  );
                  break;
              }
            },
            child: child,
          );
        },
        home: const SplashPage());
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}

class LifecycleEventHandler extends WidgetsBindingObserver {
  final AsyncCallback resumeCallBack;
  final AsyncCallback suspendingCallBack;

  LifecycleEventHandler({
    required this.resumeCallBack,
    required this.suspendingCallBack,
  });

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        if (resumeCallBack != null) {
          await resumeCallBack();
        }
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        if (suspendingCallBack != null) {
          await suspendingCallBack();
        }
        break;
    }
  }
}
