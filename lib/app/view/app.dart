// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

// ignore_for_file: sort_constructors_first

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hifive/app/bloc/app_bloc.dart';
import 'package:hifive/app/routes/routes.dart';
import 'package:hifive/enums/app_status.dart';
import 'package:hifive/l10n/l10n.dart';
import 'package:hifive/pages/home/home.dart';
import 'package:hifive/pages/login/view/view.dart';
import 'package:hifive/pages/note/add_note_page.dart';
import 'package:hifive/pages/note/bloc/note_bloc.dart';
import 'package:hifive/pages/note/note_home_page.dart';
import 'package:hifive/repositories/app/app_repository.dart';
import 'package:hifive/repositories/note/note_repository.dart';
import 'package:hifive/theme.dart';
import 'package:path_provider/path_provider.dart';

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
          child: AppView(),
        ),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: theme,
        navigatorKey: _navigatorKey,
        // onGenerateRoute: (settings) {
        //   switch (settings.name) {
        //     case '/':
        //       return MaterialPageRoute(
        //         builder: (_) => BlocProvider.value(
        //           value: _bloc..add(const Started()),
        //           child: const HomePage(),
        //         ),
        //       );
        //     case '/note_home':
        //       return NoteHomePage.route();
        //     // case '/note_home':
        //     //   return MaterialPageRoute(
        //     //     builder: (_) => BlocProvider.value(
        //     //       value: _bloc..add(const Started()),
        //     //       child: const NoteHomePage(),
        //     //     ),
        //     //   );
        //     case '/add_note':
        //       return MaterialPageRoute(
        //         builder: (_) => BlocProvider.value(
        //           value: _bloc,
        //           child: const AddNotePage(),
        //         ),
        //       );
        //   }
        // },
        builder: (context, child) {
          return BlocListener<AppBloc, AppState>(
            listener: (context, state) {
              switch (state.status) {
                case AppStatus.authenticated:
                  _navigator.pushAndRemoveUntil<void>(
                    HomePage.route(),
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
