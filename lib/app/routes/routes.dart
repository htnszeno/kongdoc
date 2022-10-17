import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/app/bloc/app_bloc.dart';
import 'package:hifive/app/view/app.dart';
import 'package:hifive/pages/home/home.dart';
import 'package:hifive/pages/login/login.dart';
import 'package:hifive/pages/note/add_note_page.dart';
import 'package:hifive/pages/note/bloc/note_bloc.dart';
import 'package:hifive/pages/note/note_home_page.dart';
import 'package:hifive/repositories/repositories.dart';

List<Page<dynamic>> onGenerateAppViewPages(
    AuthenticationStatus status, List<Page<dynamic>> page, NoteBloc bloc) {
  switch (status) {
    case AuthenticationStatus.authenticated:
      return [
        HomePage.page(),
      ];

    case AuthenticationStatus.unauthenticated:
      return [LoginPage.page()];
    case AuthenticationStatus.unknown:
      return [
        MaterialPage<void>(
            child: BlocProvider.value(
          value: bloc..add(Started()),
          child: NoteHomePage(),
        )),
      ];
  }
}
