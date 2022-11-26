part of "dio_client.dart";

class AppInterceptors extends QueuedInterceptor {
  factory AppInterceptors() {
    return _singleton ??= AppInterceptors._internal();
  }

  String camelToSentence(text) {
    var result = text.replaceAll(RegExp(r'(?<!^)(?=[A-Z])'), r"_");
    return result.toUpperCase();
  }

  List<String> returnKeys(keyData) {
    String convertData = keyData.keys.toString().replaceAll('(', '');
    convertData = convertData.replaceAll(')', '');
    return convertData.replaceAll(' ', '').split(',');
  }

  AppInterceptors._internal();

  static AppInterceptors? _singleton;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final prefs = await SharedPreferences.getInstance();
    if (options.path != '/api/file/uploadMultiFile') {
      if (options.data['_csrf'] != null) {
        // 로그인 시도로 이전 얻어온 토큰 설정
        options.headers['X-CSRF-TOKEN'] = options.data['_csrf'];
        prefs.remove('CSRF_TOKEN');
      }
    }
    // 내부 카멜케이스 키를 XXX_XXX 형식으로 변환 전송
    if (options.path != '/api/file/uploadMultiFile' &&
        options.data != null &&
        options.data.length > 0) {
      List<String> vars = returnKeys(options.data);
      vars.forEach((key) {
        options.data[camelToSentence(key)] = options.data[key] ?? "";
        options.data.remove(key);
      });
    }

    if (options.path == '/api/file/uploadMultiFile') {
      // 로그인 이후 일반 통신 처리
      options.headers['X-CSRF-TOKEN'] = prefs.getString('CSRF_TOKEN');
      options.headers['Content-Type'] = 'application/json;charset=utf-8';
    } else {
      if (prefs.getString('CSRF_TOKEN') != null &&
          options.data['USER_ID'] != 'tokenfix') {

        Globals().setCookie = options.headers['cookie'].toString();

        // 로그인 이후 일반 통신 처리
        options.headers['X-CSRF-TOKEN'] = prefs.getString('CSRF_TOKEN');
        print(prefs.getString('CSRF_TOKEN'));
        options.headers['Content-Type'] = 'application/json;charset=utf-8';
      }
    }
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    final prefs = await SharedPreferences.getInstance();
    final responseData = mapResponseData(
        requestOptions: response.requestOptions, response: response);
    // 로그인 성공 후
    if (response.data['type'] == 200110) {
      String token = response.data['signaldata']['X-CSRF-TOKEN'];
      prefs.setString('CSRF_TOKEN', token);
      prefs.setString('USER_ID', response.requestOptions.data['USER_ID']);
      prefs.setString('PW', response.requestOptions.data['PW']);
      Globals().setCsrfToken = token;
    } else if (response.data['type'] == 200111) {
      prefs.remove('CSRF_TOKEN');
    }else if(response.data['type'] == 200130){
      // "msg" -> "Invalid CSRF Token '3f3f081b-ecfc-46d8-9621-0221b15fe9fb' was found on the request parameter '_csrf'..."
      // context.read<AppBloc>().add(AppLogoutRequested());
      // Globals().appBloc.add(AppActiveLoginRequested());
    }

    return handler.resolve(responseData);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    /// Gets custom error message
    final errorMessage = getErrorMessage(err.type, err.response?.statusCode);

    /// Maps custom response
    final responseData = mapResponseData(
      requestOptions: err.requestOptions,
      response: err.response,
      customMessage: errorMessage,
      isErrorResponse: true,
    );

    return handler.resolve(responseData);
  }
}

String getErrorMessage(DioErrorType errorType, int? statusCode) {
  String errorMessage = "";
  switch (errorType) {
    case DioErrorType.connectTimeout:
    case DioErrorType.sendTimeout:
    case DioErrorType.receiveTimeout:
      errorMessage = DioErrorMessage.deadlineExceededException;
      break;
    case DioErrorType.response:
      switch (statusCode) {
        case 400:
          errorMessage = DioErrorMessage.badRequestException;
          break;
        case 401:
          errorMessage = DioErrorMessage.unauthorizedException;
          break;
        case 404:
          errorMessage = DioErrorMessage.notFoundException;
          break;
        case 409:
          errorMessage = DioErrorMessage.conflictException;
          break;
        case 500:
          errorMessage = DioErrorMessage.internalServerErrorException;
          break;
      }
      break;
    case DioErrorType.cancel:
      break;
    case DioErrorType.other:
      errorMessage = DioErrorMessage.unexpectedException;
      break;
  }
  return errorMessage;
}

class DioErrorMessage {
  static const badRequestException = "Invalid request";
  static const internalServerErrorException =
      "Unknown error occurred, please try again later.";
  static const conflictException = "Conflict occurred";
  static const unauthorizedException = "Access denied";
  static const notFoundException =
      "The requested information could not be found";
  static const unexpectedException = "Unexpected error occurred.";
  static const noInternetConnectionException =
      "No internet connection detected, please try again.";
  static const deadlineExceededException =
      "The connection has timed out, please try again.";
}

Response<dynamic> mapResponseData({
  Response<dynamic>? response,
  required RequestOptions requestOptions,
  String customMessage = "",
  bool isErrorResponse = false,
}) {
  // print("requestOptions:::=== ${response}");

  final bool hasResponseData = response?.data != null;
  Map<String, dynamic>? responseData = null;

  if (response?.data is String) {
    // json형태로 출력되어야하나 문자열로 출력되고 맨앞에 \r\n이 포함되는 문제 발생
    String? _data = response?.data.toString().replaceAll("\r\n", "");
    responseData = jsonDecode(_data!);
    response?.data = responseData;
  } else {
    // 문제없는 경우
    responseData = response?.data;

    // responseData = response?.data.data['items'];
  }

  if (hasResponseData) {
    responseData!.addAll({
      "statusCode": response?.statusCode,
      "statusMessage": response?.statusMessage
    });
  }

  return Response(
    requestOptions: requestOptions,
    data: hasResponseData
        ? responseData
        : AppResponse(
            msg: customMessage,
            success: isErrorResponse ? false : true,
            statusCode: response?.statusCode,
            statusMessage: response?.statusMessage,
          ).toJson(
            (value) => null,
          ),
  );
}
