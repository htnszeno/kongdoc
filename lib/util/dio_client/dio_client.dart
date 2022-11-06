// Package imports:
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hifive/config.dart';
import 'package:hifive/constants.dart';
import 'package:hifive/models/app_response.dart';
import 'package:hifive/util/global.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_interceptors.dart';

class DioClient {
  static DioClient? _singleton;

  // Dio client with default configuration
  final Dio dio = createDioClient();
  DioClient._internal();

  factory DioClient() {
    return _singleton ??= DioClient._internal();
  }
  static Dio createDioClient() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseApiUrl,
        receiveTimeout: 15000, // 15 seconds
        connectTimeout: 15000,
        sendTimeout: 15000,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
          'X-CSRF-TOKEN': 'Global No1 HTNS',
          'AJAX': 'true',
          'User-Agent': 'okhttp/3.4.1',
          'credentials': 'omit',
        },
      ),
    );
    var cookieJar = PersistCookieJar(
        storage: FileStorage("${Globals().appPath}/.cookies/"));
    dio.interceptors.add(CookieManager(cookieJar));

    dio.interceptors.addAll([
      AppInterceptors(),
      if (Config.DIO_CLIENT_DEBUG_LOG)
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
    ]);
    return dio;
  }
}
