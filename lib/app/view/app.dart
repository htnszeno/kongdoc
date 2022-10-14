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
import 'package:hifive/l10n/l10n.dart';
import 'package:hifive/repositories/note/note_repository.dart';
import 'package:hifive/theme.dart';

import '../../pages/note/add_note/bloc/add_note_bloc.dart';
import '../../pages/note/home/bloc/note_home_bloc.dart';

class App extends StatelessWidget {
  final AuthenticationRepository _authenticationRepository;
  final NoteRepository _noteRepository;

  const App({
    super.key,
    required AuthenticationRepository authenticationRepository,
    required NoteRepository noteRepository,
  })  : _authenticationRepository = authenticationRepository,
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
        value: _authenticationRepository,
        child: BlocProvider(
          create: (_) => AppBloc(
            authenticationRepository: _authenticationRepository,
          ),
          child: const AppView(),
        ),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return MultiRepositoryProvider(
  //     providers: [
  //       RepositoryProvider.value(
  //         value: _noteRepository,
  //       ),
  //     ],
  //     child: RepositoryProvider.value(
  //       value: _authenticationRepository,
  //       child: MultiBlocProvider(
  //         providers: [
  //           BlocProvider<AppBloc>(
  //             create: (context) => AppBloc(
  //               authenticationRepository: _authenticationRepository,
  //             ),
  //           ),
  //           BlocProvider<NoteHomeBloc>(
  //             create: (context) => NoteHomeBloc(
  //               noteRepository: context.read<NoteRepository>(),
  //             )..add(const Started()),
  //           ),
  //           BlocProvider<AddNoteBloc>(
  //             create: (context) => AddNoteBloc(
  //               noteRepository: context.read<NoteRepository>(),
  //               noteBloc: context.read<NoteHomeBloc>(),
  //             ),
  //           ),
  //         ],
  //         child: const AppView(),
  //       ),
  //     ),
  //   );
  // }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      // home: LoginPage(),
      home: FlowBuilder<AppStatus>(
        state: context.select((AppBloc bloc) => bloc.state.status),
        onGeneratePages: onGenerateAppViewPages,
      ),
    );
  }
}
