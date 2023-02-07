import 'package:kongdoc/app/app.dart';
import 'package:kongdoc/app/bloc/app_bloc.dart';

class Globals {
  static final Globals _instance = Globals._internal();

  factory Globals() => _instance;

  Globals._internal() {
    _appDirectoryPath = '';
    _csrfToken = '';
    _cookie = '';
    _appBloc = null;
  }

  String? _appDirectoryPath;
  String? _csrfToken;
  String? _cookie;
  AppBloc? _appBloc;
  dynamic? _session;

  dynamic get session => _session;

  String get csrfToken => _csrfToken!;

  set setCsrfToken(String value) => _csrfToken = value;

  String get cookie => _cookie!;

  AppBloc get appBloc => _appBloc!;

  set setCookie(String value) => _cookie = value;

  String get appPath => _appDirectoryPath!;

  set setAppDirectoryPath(String value) => _appDirectoryPath = value;

  set setAppBloc(AppBloc value) => _appBloc = value;

  set setSession(dynamic value) => _session = value;
}
