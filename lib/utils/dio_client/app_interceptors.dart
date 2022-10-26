part of "dio_client.dart";

class AppInterceptors extends QueuedInterceptor {
  factory AppInterceptors() {
    return _singleton ??= AppInterceptors._internal();
  }

  AppInterceptors._internal();
  static AppInterceptors? _singleton;
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final prefs = await SharedPreferences.getInstance();
    if(options.data['_csrf'] != null){
      options.headers['X-CSRF-TOKEN'] = options.data['_csrf'];
      prefs.remove('CSRF_TOKEN');
    }

    if(prefs.getString('CSRF_TOKEN') != null && options.data['USER_ID'] != 'tokenfix'){
      options.headers['X-CSRF-TOKEN'] = prefs.getString('CSRF_TOKEN');
    }
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    /// Maps custom response
    final responseData = mapResponseData(
        requestOptions: response.requestOptions, response: response);
    // 로그인 성공 후
    if(response.data['TYPE'] == 200110){
      String token = response.data['signaldata']['X-CSRF-TOKEN'];
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('CSRF_TOKEN', token!);
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
            message: customMessage,
            success: isErrorResponse ? false : true,
            statusCode: response?.statusCode,
            statusMessage: response?.statusMessage,
          ).toJson(
            (value) => null,
          ),
  );
}
