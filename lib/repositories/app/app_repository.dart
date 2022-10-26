import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:cache/cache.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:hifive/utils/dio_client/dio_client.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';

/**
 * AppRepository 
 * 앱 전체 로그인 공통영역과 관련 모든 것 처리
 * 
 */
class AppRepository {
  AppRepository({
    Dio? dioClient,
    CacheClient? cache,
    firebase_auth.FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
  })  : _dioClient = dioClient ?? DioClient().dio,
        _cache = cache ?? CacheClient(),
        _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn.standard();

  final Dio _dioClient;

  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final CacheClient _cache;
  static const userCacheKey = '__user_cache_key__';
  final _controller = StreamController<User>();

  @visibleForTesting
  bool isWeb = kIsWeb;

  User get currentUser {
    return _cache.read<User>(key: userCacheKey) ?? User.empty;
  }

  Stream<User> get user async* {
    // 이부분에서 서버 통신으로 세션정보 받아옴..
    User user = User(id: '', name: '홍길동', email: 'benneylwa@neat.et');
    _cache.write(key: userCacheKey, value: user);
    yield user; // 유저가 없다면 user.empty
    yield* _controller.stream;
  }
}
