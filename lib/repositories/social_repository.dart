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
    CacheClient? cache,
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

  Future<AppResponse<List<SocialItem>?>> getMany({
    required int currentPage,
    int limit = 10,
  }) async {
    int start = currentPage == 1 ? 0 : ((currentPage * limit) - limit);
    final response = await _dioClient.post(Endpoints.socialGetMany, data: {
      'my_user_id': "benny",
      'start': start,
      'limit': limit,
      'page': currentPage
    });

    print(response.data['data']['items']);
    // dynamic j = [
    //   {'userId': 'benny', 'userName': '홍길동'}
    // ];

    return response.data['data']['items'];
    // return AppResponse<List<SocialItem>?>.fromJson(j, (dynamic json) {
    //   return (json as List<dynamic>)
    //       .map((e) => SocialItem.fromJson(e))
    //       .toList();

    //   // print('json === . ${json}');
    //   // if (json != null && response.data['type'] == 1) {
    //   //   return (json as List<dynamic>)
    //   //       .map((e) => SocialItem.fromJson(e))
    //   //       .toList();
    //   // }
    //   return null;
    // });
  }
}
