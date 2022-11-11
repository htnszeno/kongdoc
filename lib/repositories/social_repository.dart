// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:cache/cache.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:hifive/models/app_response.dart';
import 'package:hifive/models/exam_model.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/models/user_model.dart';
import 'package:hifive/pages/social/request/create_social_request.dart';
import 'package:hifive/repositories/core/endpoint.dart';
import 'package:hifive/util/dio_client/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

/**
 * AppRepository 
 * 앱 전체 로그인 공통영역과 관련 모든 것 처리
 * 
 */
class SocialRepository {
  SocialRepository({
    Dio? dioClient,
    // CacheClient? cache,
    // firebase_auth.FirebaseAuth? firebaseAuth,
    // GoogleSignIn? googleSignIn,
  }) : _dioClient = dioClient ?? DioClient().dio;

  final Dio _dioClient;

  @visibleForTesting
  bool isWeb = kIsWeb;

  Future<Map<String, dynamic>> getInit() async {
    final Response<dynamic> response = await _dioClient.post(
      // '/api/PETUS001SVC/get',
      Endpoints.getInit,
      data: {
        // "user_id":"cdyoo42"
      },
    );
    return response.data;
  }

  Future<AppResponse<ExamItem?>> create(
      CreateSocialRequest request
      ) async {
    final response = await _dioClient.post(
      Endpoints.socialCreate,
      data: request.toJson(),
    );

    return AppResponse<ExamItem?>.fromJson(
      response.data,
          (dynamic json) => response.data['success'] && json != null
          ? ExamItem.fromJson(json)
          : null,
    );
  }

  Future<AppResponse<List<SocialItem>?>> getMany({
    required int currentPage,
    int limit = 10,
  }) async {
    int start = currentPage == 1 ? 0 : ((currentPage * limit) - limit);
    final response = await _dioClient.post(Endpoints.socialGetMany, data: {
      'my_user_id': "cdyoo42",
      'start': start,
      'limit': limit,
      'page': currentPage
    });
    print(response);
    return AppResponse<List<SocialItem>?>.fromJson(response.data, (dynamic json) {
      return (json as List<dynamic>)
          .map((e) => SocialItem.fromJson(e))
          .toList();

      // print('json === . ${json}');
      // if (json != null && response.data['type'] == 1) {
      //   return (json as List<dynamic>)
      //       .map((e) => SocialItem.fromJson(e))
      //       .toList();
      // }
      return null;
    });
  }
}
