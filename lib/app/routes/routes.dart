import 'package:flutter/material.dart';
import 'package:hifive/app/bloc/app_bloc.dart';
import 'package:hifive/pages/home/home.dart';
import 'package:hifive/pages/login/login.dart';
import 'package:hifive/pages/note/home/note_home_page.dart';

List<Page<dynamic>> onGenerateAppViewPages(
    AppStatus status, List<Page<dynamic>> page) {
  switch (status) {
    case AppStatus.authenticated:
      return [NoteHomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
