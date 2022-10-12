// import 'package:firebase_core/firebase_core.dart';
// ignore_for_file: unawaited_futures

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hifive/app/app.dart';
import 'package:hifive/bootstrap.dart';

Future<void> main() async {
// void main() {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // final authenticationRepository = AuthenticationRepository();

  bootstrap(() => const App());
}
