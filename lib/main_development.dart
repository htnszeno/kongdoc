// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hifive/app/app.dart';
import 'package:hifive/bootstrap.dart';
import 'package:hifive/repositories/app_repository.dart';
import 'package:hifive/repositories/note/note_repository.dart';
import 'package:hifive/util/global.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationSupportDirectory();
  Globals().setAppDirectoryPath = directory.path;

  // await Firebase.initializeApp();
  final appRepository = AppRepository();
  final noteRepository = NoteRepository();

  bootstrap(
    () => App(
      appRepository: appRepository,
      noteRepository: noteRepository,
    ),
  );
}
