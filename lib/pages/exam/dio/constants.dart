class Constants {
  static String get baseApiUrl =>
      kReleaseMode ? kLiveBaseApiUrl : kTestBaseApiUrl;
}

const kReleaseMode = false;
const kLiveBaseApiUrl = "https://jsonplaceholder.typicode.com";
const kTestBaseApiUrl = "http://192.168.123.154:18080";

const kIconButtonSplashRadius = 25.0;
