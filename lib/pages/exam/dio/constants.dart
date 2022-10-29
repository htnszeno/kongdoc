class Constants {
  static String get baseApiUrl =>
      kReleaseMode ? kLiveBaseApiUrl : kTestBaseApiUrl;
}

const kReleaseMode = true;
const kLiveBaseApiUrl = "https://jsonplaceholder.typicode.com";
const kTestBaseApiUrl = "https://jsonplaceholder.typicode.com";

const kIconButtonSplashRadius = 25.0;
