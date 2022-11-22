class Globals {
  static final Globals _instance = Globals._internal();

  factory Globals() => _instance;

  Globals._internal() {
    _appDirectoryPath = '';
    _csrfToken = '';
    _cookie = '';
  }

  String? _appDirectoryPath;
  String? _csrfToken;
  String? _cookie;

  String get csrfToken => _csrfToken!;

  set setCsrfToken(String value) => _csrfToken = value;

  String get cookie => _cookie!;

  set setCookie(String value) => _cookie = value;

  String get appPath => _appDirectoryPath!;

  set setAppDirectoryPath(String value) => _appDirectoryPath = value;
}
