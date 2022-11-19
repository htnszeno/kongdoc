class Constants {
  static String get baseApiUrl =>
      kReleaseMode ? kLiveBaseApiUrl : kTestBaseApiUrl;
}

const kReleaseMode = false;
const kLiveBaseApiUrl = "http://190.190.221.30:18080";
// const kTestBaseApiUrl = "https://noteapp-api-test.herokuapp.com";
const kTestBaseApiUrl = "http://192.168.1.218:18080";

const kIconButtonSplashRadius = 25.0;

const systemFailMessage = '시스템에 문제가 발생하였습니다. 잠시 후에 접속해주세요.';
