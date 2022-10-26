// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hifive/app/app.dart';
import 'package:hifive/bootstrap.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:hifive/repositories/app/app_repository.dart';
import 'package:hifive/repositories/note/note_repository.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // final authenticationRepository = AuthenticationRepository();
  final appRepository = AppRepository();
  final noteRepository = NoteRepository();

  bootstrap(
    () => App(
      // authenticationRepository: authenticationRepository,
      appRepository: appRepository,
      noteRepository: noteRepository,
    ),
  );
}
