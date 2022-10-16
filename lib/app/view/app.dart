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
import 'package:hifive/pages/home/home.dart';
import 'package:hifive/pages/note/add_note_page.dart';
import 'package:hifive/pages/note/bloc/note_bloc.dart';
import 'package:hifive/pages/note/note_home_page.dart';
import 'package:hifive/repositories/note/note_repository.dart';
import 'package:hifive/theme.dart';

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
          child: AppView(),
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
  //           BlocProvider<NoteBloc>(
  //             create: (context) => NoteBloc(
  //               noteRepository: context.read<NoteRepository>(),
  //             )..add(const Started()),
  //           ),
  //           // BlocProvider<AddNoteBloc>(
  //           //   create: (context) => AddNoteBloc(
  //           //     noteRepository: context.read<NoteRepository>(),
  //           //     noteBloc: context.read<NoteHomeBloc>(),
  //           //   ),
  //           // ),
  //         ],
  //         child: const AppView(),
  //       ),
  //     ),
  //   );
  // }
}

class AppView extends StatefulWidget {
  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  // const AppView({Key? key}) : super(key: key);
  final noteRepository = NoteRepository();
  late NoteBloc _bloc;

  @override
  void initState() {
    _bloc = NoteBloc(
      noteRepository: noteRepository,
    ); //..add(const Started());
    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   '/note_home': (context) => Builder(builder: (context) {
      //         return BlocProvider.value(
      //           value: _bloc..add(Started()),
      //           child: const NoteHomePage(),
      //         );
      //       }),
      //   '/add_note': (context) => BlocProvider.value(
      //         value: _bloc,
      //         child: const AddNotePage(),
      //       )
      // },
      theme: theme,
      // home: HomePage(),
      // onGenerateRoute: ((settings) {
      //   switch (settings.name) {
      //     case '/':
      //       return MaterialPageRoute(
      //         builder: (_) => BlocProvider.value(
      //           value: _bloc..add(Started()),
      //           child: HomePage(),
      //         ),
      //       );
      //     case '/note_home':
      //       return MaterialPageRoute(
      //         builder: (_) => BlocProvider.value(
      //           value: _bloc..add(Started()),
      //           child: NoteHomePage(),
      //         ),
      //       );
      //     case '/add_note':
      //       return MaterialPageRoute(
      //         builder: (_) => BlocProvider.value(
      //           value: _bloc,
      //           child: AddNotePage(),
      //         ),
      //       );
      //   }
      // }),
      home: FlowBuilder<AppStatus>(
        state: context.select((AppBloc bloc) => bloc.state.status),
        onGeneratePages: (status, page) =>
            onGenerateAppViewPages(status, page, _bloc),
      ),
    );
  }
}
