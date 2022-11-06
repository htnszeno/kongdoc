class Globals {
  static final Globals _instance = Globals._internal();

  factory Globals() => _instance;

  Globals._internal() {
    _appDirectoryPath = '';
  }

  String? _appDirectoryPath;

  String get appPath => _appDirectoryPath!;

  set setAppDirectoryPath(String value) => _appDirectoryPath = value;
}
