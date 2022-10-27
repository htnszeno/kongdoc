import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:cache/cache.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:hifive/models/app_response.dart';
import 'package:hifive/models/user_model.dart';
import 'package:hifive/repositories/core/endpoint.dart';
import 'package:hifive/utils/dio_client/dio_client.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';

class LogOutFailure implements Exception {}

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
    // User user = User(id: '', name: '홍길동', email: 'benneylwa@neat.et');
    User user = User.empty;
    final initData = await getInit();
    if (initData['TYPE'] == 1) {
      var session = initData['data']['session'];

      user = User(
          userId: session['USER_ID'],
          userName: session['USER_NAME_ENG'],
          email: session['EMAIL']);
    }
    _cache.write(key: userCacheKey, value: user);
    yield user; // 유저가 없다면 user.empty
    yield* _controller.stream;
  }

  Future<dynamic> getCsrfToken() async {
    try {
      var response = await _dioClient.post(
        Endpoints.token,
        data: {'USER_ID': 'tokenfix', 'PW': 'tokenfix'},
      );
      return response.data['signaldata']['X_CSRF_TOKEN'];
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<Map<String, dynamic>> logInWithUserIdAndPassword({
    required String userId,
    required String password,
  }) async {
    final csrf = await getCsrfToken();
    final Response<dynamic> response = await _dioClient.post(
      Endpoints.token,
      data: {
        'USER_ID': userId,
        'PW': password,
        '_csrf': csrf,
        '_spring_security_remember_me': true
      },
    );
    if (response.data['TYPE'] == 200111) {
      throw LoginFailureException.fromCode(response.data['TYPE']);
    } else if (response.data['TYPE'] == 200110) {
      final result = await getInit();
      if (result['TYPE'] == 1) {
        final session = result['data']['session'];
        _controller.add(User(
          userId: session['USER_ID'],
          userName: session['USER_NAME_LOC'],
          email: session['EMAIL'],
        ));
      }
    }
    return response.data;
  }

  Future<void> logInWithGoogle() async {
    try {
      late final firebase_auth.AuthCredential credential;
      if (isWeb) {
        final googleProvider = firebase_auth.GoogleAuthProvider();
        final userCredential = await _firebaseAuth.signInWithPopup(
          googleProvider,
        );
        credential = userCredential.credential!;
      } else {
        final googleUser = await _googleSignIn.signIn();
        final googleAuth = await googleUser!.authentication;
        credential = firebase_auth.GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
      }
      await _firebaseAuth.signInWithCredential(credential);
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw LogInWithGoogleFailure.fromCode(e.code);
    } catch (_) {
      throw const LogInWithGoogleFailure();
    }
  }

  // Future<void> logOut() async {
  //   try {
  //     // await Future.wait([
  //     //   _firebaseAuth.signOut(),
  //     //   _googleSignIn.signOut(),
  //     // ]);
  //   } catch (_) {
  //     throw LogOutFailure();
  //   }
  // }
  Future<Map<String, dynamic>> logOut() async {
    print("logout...");
    final Response<dynamic> response = await _dioClient.post(
      Endpoints.logout,
      data: {},
    );
    return response.data;
  }

  // Future<AppResponse<User?>> getInit() async {
  //   final Response<dynamic> response = await _dioClient.post(
  //     Endpoints.getInit,
  //     data: {},
  //   );
  //   // return response.data;

  //   return AppResponse<User?>.fromJson(
  //     response.data,
  //     (dynamic json) =>
  //         response.data['success'] && json != null ? User.fromJson(json) : null,
  //   );
  // }

  Future<Map<String, dynamic>> getInit() async {
    final Response<dynamic> response = await _dioClient.post(
      Endpoints.getInit,
      data: {},
    );
    return response.data;
  }
}

// extension on firebase_auth.User {
//   User get toUser {
//     return User(id: uid, email: email, name: displayName, photo: photoURL);
//   }
// }

class LoginFailureException implements Exception {
  final String message;

  const LoginFailureException([
    this.message = '요청에 문제가 발생하였습니다. 계속 될 수 관리자에게 문의하세요.',
  ]);

  factory LoginFailureException.fromCode(int code) {
    switch (code) {
      case 200111:
        return const LoginFailureException(
          '아이디와 비밀번호를 확인하세요.',
        );
      default:
        return const LoginFailureException();
    }
  }
}
