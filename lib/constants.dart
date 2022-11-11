class Constants {
  static String get baseApiUrl =>
      kReleaseMode ? kLiveBaseApiUrl : kTestBaseApiUrl;
}

const kReleaseMode = true;
const kLiveBaseApiUrl = "http://192.168.0.104:18080";
// const kTestBaseApiUrl = "https://noteapp-api-test.herokuapp.com";
const kTestBaseApiUrl = "http://192.168.0.104:18080";

const kIconButtonSplashRadius = 25.0;
