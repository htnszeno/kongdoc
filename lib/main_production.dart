import 'package:flutter/material.dart';
import 'package:hifive/app/app.dart';
import 'package:hifive/bootstrap.dart';
import 'package:hifive/repositories/app_repository.dart';
import 'package:hifive/repositories/diary_repository.dart';
import 'package:hifive/repositories/social_repository.dart';
import 'package:hifive/util/global.dart';
import 'package:hifive/util/time.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  TimeUtil.setLocalMessages();

  final directory = await getApplicationSupportDirectory();
  Globals().setAppDirectoryPath = directory.path;

  // await Firebase.initializeApp();
  final appRepository = AppRepository();
  final socialRepository = SocialRepository();
  final diaryRepository = DiaryRepository();

  bootstrap(
    () => App(
      appRepository: appRepository,
      socialRepository: socialRepository,
      diaryRepository: diaryRepository,
    ),
  );
}
