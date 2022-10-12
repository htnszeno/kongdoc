import 'package:flutter/material.dart';
import 'package:hifive/app/bloc/app_bloc.dart';
import 'package:hifive/pages/home/home.dart';
import 'package:hifive/pages/login/login.dart';

List<Page<dynamic>> onGenerateAppViewPages(
    AppStatus status, List<Page<dynamic>> page) {
  switch (status) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
