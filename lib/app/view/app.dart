import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:kongdoc/app/bloc/app_bloc.dart';
import 'package:kongdoc/binding/init_bindings.dart';
import 'package:kongdoc/enums/app_status.dart';
import 'package:kongdoc/l10n/l10n.dart';
import 'package:kongdoc/pages/login/view/view.dart';
import 'package:kongdoc/pages/main_page.dart';
import 'package:kongdoc/repositories/app_repository.dart';
import 'package:kongdoc/repositories/diary_repository.dart';
import 'package:kongdoc/theme.dart';
import 'package:kongdoc/util/global.dart';

import '../../pages/home/bloc/home_bloc.dart';
import '../../repositories/home_repository.dart';

class App extends StatelessWidget {
  final AppRepository _appRepository;
  final DiaryRepository _diaryRepository;
  final HomeRepository _homeRepository;

  const App({
    super.key,
    required AppRepository appRepository,
    required DiaryRepository diaryRepository,
    required HomeRepository homeRepository,
  })  : _appRepository = appRepository,
        _diaryRepository = diaryRepository,
        _homeRepository = homeRepository;

  @override
  Widget build(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    // 키보드 열려 있다면 닫는다.
    SystemChannels.textInput.invokeMethod('TextInput.hide');

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: _appRepository,
        ),
        // RepositoryProvider.value(
        //   value: _socialRepository,
        // ),
        RepositoryProvider.value(
          value: _diaryRepository,
        ),
        RepositoryProvider.value(
          value: _homeRepository,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>(
            create: (BuildContext context) => AppBloc(
              appRepository: _appRepository,
            ),
          ),
          BlocProvider<HomeBloc>(
            create: (BuildContext context) => HomeBloc(
              homeRepository: _homeRepository,
            ),
          ),
          // BlocProvider<SocialBloc>(
          //   create: (BuildContext context) => SocialBloc(
          //     socialRepository: _socialRepository,
          //   ),
          // ),
          // BlocProvider<DiaryBloc>(
          //   create: (BuildContext context) => DiaryBloc(
          //     diaryRepository: _diaryRepository,
          //   ),
          // ),
        ],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  bool isAppInactive = false;

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(
      LifecycleEventHandler(
        resumeCallBack: () async => setState(() {
          isAppInactive = false;
          Globals().appBloc.add(AppActiveLoginRequested());
        }),
        suspendingCallBack: () async {
          setState(() {
            isAppInactive = true;
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // AppBloc는 전역설정
    Globals().setAppBloc = context.read<AppBloc>();
    return GetMaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return BlocListener<AppBloc, AppState>(
          listener: (context, state) {
            switch (state.status) {
              case AppStatus.authenticated:
                _navigator.pushAndRemoveUntil<void>(
                  MainPage.route(),
                  (route) => false,
                );
                break;
              case AppStatus.unauthenticated:
                _navigator.pushAndRemoveUntil<void>(
                  LoginPage.route(),
                  (route) => false,
                );
                break;
              case AppStatus.unknown:
                _navigator.pushAndRemoveUntil<void>(
                  SplashPage.route(),
                  (route) => false,
                );
                break;
            }
          },
          child: child,
        );
      },
      home: const SplashPage(),
      initialBinding: InitBindings(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('ko', ''), // Korean, no country code
      ],
    );
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}

class LifecycleEventHandler extends WidgetsBindingObserver {
  final AsyncCallback resumeCallBack;
  final AsyncCallback suspendingCallBack;

  LifecycleEventHandler({
    required this.resumeCallBack,
    required this.suspendingCallBack,
  });

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        if (resumeCallBack != null) {
          await resumeCallBack();
        }
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        if (suspendingCallBack != null) {
          await suspendingCallBack();
        }
        break;
    }
  }
}
