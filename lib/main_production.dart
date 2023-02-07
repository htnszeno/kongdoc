import 'package:flutter/material.dart';
import 'package:kongdoc/app/app.dart';
import 'package:kongdoc/bootstrap.dart';
import 'package:kongdoc/repositories/app_repository.dart';
import 'package:kongdoc/repositories/diary_repository.dart';
import 'package:kongdoc/repositories/home_repository.dart';
import 'package:kongdoc/util/global.dart';
import 'package:kongdoc/util/time.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  TimeUtil.setLocalMessages();

  final directory = await getApplicationSupportDirectory();
  Globals().setAppDirectoryPath = directory.path;

  // await Firebase.initializeApp();
  final appRepository = AppRepository();
  final diaryRepository = DiaryRepository();
  final homeRepository = HomeRepository();

  bootstrap(
    () => App(
      appRepository: appRepository,
      diaryRepository: diaryRepository,
      homeRepository: homeRepository,
    ),
  );
}
