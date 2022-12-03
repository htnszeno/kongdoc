// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:hifive/models/app_response.dart';
import 'package:hifive/models/comment_model.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/request/comment_request.dart';
import 'package:hifive/pages/social/request/create_social_request.dart';
import 'package:hifive/pages/social/request/update_social_request.dart';
import 'package:hifive/repositories/core/endpoint.dart';
import 'package:hifive/util/dio_client/dio_client.dart';

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

  @override
  Future<AppResponse<int?>> deleteSingle(String postId) async {
    final response = await _dioClient
        .post("/api/PETSO001SVC/put", data: {'postId': postId, 'status': 'D'});
    return AppResponse<int?>.fromJson(
      response.data,
      (json) => response.data['success'] && json != null ? json as int : null,
    );
  }

  @override
  Future<AppResponse<String?>> getPostId() async {
    final response = await _dioClient.post("/api/SO001SVC/getPostId", data: {});
    return AppResponse<String?>.fromJson(
      response.data,
      (json) =>
          response.data['success'] && json != null ? json as String : null,
    );
  }

  Future<AppResponse<List<SocialItem>?>> update(
      UpdateSocialRequest request) async {
    final response = await _dioClient.post(
      "/api/CUSSO001SVC/put",
      data: request.toJson(),
    );
    return AppResponse<List<SocialItem>?>.fromJson(response.data,
        (dynamic json) {
      return (json as List<dynamic>)
          .map((e) => SocialItem.fromJson(e))
          .toList();
    });
  }

  Future<AppResponse<List<SocialItem>?>> create(
      CreateSocialRequest request, String postId) async {
    Map data = request.toJson();
    data["postId"] = postId;

    final response = await _dioClient.post(
      Endpoints.socialCreate,
      data: data,
    );
    return AppResponse<List<SocialItem>?>.fromJson(response.data,
        (dynamic json) {
      return (json as List<dynamic>)
          .map((e) => SocialItem.fromJson(e))
          .toList();
    });
  }

  Future<AppResponse<List<SocialItem>?>> getSingle(
      {required String postId}) async {
    final response =
        await _dioClient.post("/api/PETSO001SVC/get", data: {'postId': postId});

    return AppResponse<List<SocialItem>?>.fromJson(response.data,
        (dynamic json) {
      return (json as List<dynamic>)
          .map((e) => SocialItem.fromJson(e))
          .toList();
    });
  }

  Future<Map<String, dynamic>> fileUpload(
      {required List<File> files, required String postId}) async {
    final List<String> filePaths = [];
    for (int i = 0; i < files.length; i++) {
      filePaths.add(files[i].path);
    }
    var formData = FormData.fromMap({
      // 'file': await MultipartFile.fromFile(file.path),
      'file': List.generate(filePaths.length,
          (index) => MultipartFile.fromFileSync(filePaths[index])),
      'S_FUNC_CODE': 'APP',
      'REF_NO': postId,
      'REF_TYPE': 'MM'
    });
    final response =
        await _dioClient.post("/api/file/uploadMultiFile", data: formData);
    // print('repsoon ===== ${response}');
    return response.data;
  }

  Future<AppResponse<List<SocialItem>?>> getMany({
    int currentPage = 1,
    int limit = 20,
    String? postId,
  }) async {
    int start = currentPage == 1 ? 0 : ((currentPage * limit) - limit);
    final response = await _dioClient.post(Endpoints.socialGetMany, data: {
      'start': start,
      'limit': limit,
      'page': currentPage,
      'postId': postId
    });

    return AppResponse<List<SocialItem>?>.fromJson(response.data,
        (dynamic json) {
      return (json as List<dynamic>)
          .map((e) => SocialItem.fromJson(e))
          .toList();
    });
  }

  /**
   * 좋아요 전체 가져오기
   */
  Future<AppResponse<List<SocialItem>?>> getLikeMany({
    int? currentPage = 1,
    int? limit = 20,
    String? postId,
    String? userId,
  }) async {
    final response =
        await _dioClient.post(Endpoints.getLikeMany, data: {'postId': postId});

    return AppResponse<List<SocialItem>?>.fromJson(response.data,
        (dynamic json) {
      return (json as List<dynamic>)
          .map((e) => SocialItem.fromJson(e))
          .toList();
    });
  }

  // 좋아요
  Future<AppResponse<int?>> addLikeCount(String postId, String userId) async {
    final response = await _dioClient.post(
      Endpoints.addLikeCount,
      data: {'postId': postId, 'likeUserId': userId},
    );
    return AppResponse<int?>.fromJson(
      response.data,
      (json) => response.data['success'] && json != null ? json as int : null,
    );
  }


  //////////////////// 댓글저장 //////////////////////////
  Future<AppResponse<List<CommentItem>?>> createComment(
      CommentRequest request) async {

    final response = await _dioClient.post(
      Endpoints.commentCreate,
      data: request.toJson(),
    );
    print(response.data);
    return AppResponse<List<CommentItem>?>.fromJson(response.data,
            (dynamic json) {
          return (json as List<dynamic>)
              .map((e) => CommentItem.fromJson(e))
              .toList();
        });
  }

  /**
   * 댓글 전체 가져오기
   */
  Future<AppResponse<List<CommentItem>?>> getCommentMany({
    int currentPage = 1,
    int limit = 20,
    String? postId,
    String? userId,
  }) async {
    int start = currentPage == 1 ? 0 : ((currentPage * limit) - limit);
    final response = await _dioClient.post(Endpoints.getCommentMany, data: {
      'start': start,
      'limit': limit,
      'page': currentPage,
      'postId': postId
    });

    return AppResponse<List<CommentItem>?>.fromJson(response.data,
            (dynamic json) {
          return (json as List<dynamic>)
              .map((e) => CommentItem.fromJson(e))
              .toList();
        });
  }
}
