import 'package:kongdoc/util/presentation/resources/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kongdoc/util/presentation/router/app_router.dart';

import 'package:kongdoc/util/chart/web/non_web_url_strategy.dart'
if (dart.library.html) 'package:fl_chart_app/util/web/web_url_strategy.dart';

import '../view/home_theme.dart';

class TrainingChartScreen extends StatelessWidget {
  const TrainingChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppTexts.appName,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        textTheme: GoogleFonts.assistantTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: AppColors.mainTextColor3,
          ),
        ),
        scaffoldBackgroundColor: HomeTheme.background,//AppColors.contentColorWhite
      ),
      routerConfig: appRouterConfig,
    );
  }
}