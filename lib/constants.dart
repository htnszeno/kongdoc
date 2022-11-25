class Constants {
  static String get baseApiUrl =>
      kReleaseMode ? kLiveBaseApiUrl : kTestBaseApiUrl;

  static String get testImage => testimage;
}

const kReleaseMode = false;
const kLiveBaseApiUrl = "http://190.190.221.30:18080";
// const kTestBaseApiUrl = "https://noteapp-api-test.herokuapp.com";
const kTestBaseApiUrl = "http://192.168.0.104:18080";

const kIconButtonSplashRadius = 25.0;

const systemFailMessage = '시스템에 문제가 발생하였습니다. 잠시 후에 접속해주세요.';

const testimage = "https://files.porsche.com/filestore/image/multimedia/none/982-718gt4-modelimage-sideshot/model/5b3fd684-85f2-11e9-80c4-005056bbdc38/porsche-model.png";