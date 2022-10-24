// Package imports:
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hifive/config.dart';
import 'package:hifive/constants.dart';
import 'package:hifive/models/app_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

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
          // HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          'Accept': 'application/json',
          'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
          'X-CSRF-TOKEN': 'Global No1 HTNS',
          'AJAX': 'true',
          'User-Agent': 'okhttp/3.4.1',
          'credentials': 'omit',
        },
      ),
    );

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
