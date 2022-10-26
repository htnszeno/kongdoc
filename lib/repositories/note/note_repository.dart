import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hifive/models/app_response.dart';
import 'package:hifive/models/note_model.dart';
import 'package:hifive/models/request/create_login_token.dart';
import 'package:hifive/models/request/create_note_request.dart';
import 'package:hifive/models/request/update_note_request.dart';
import 'package:hifive/repositories/core/endpoint.dart';
import 'package:hifive/repositories/note/base_note_repository.dart';
import 'package:hifive/utils/dio_client/dio_client.dart';
// import 'package:note_app/models/requests/update_note_request.dart';
// import 'package:note_app/models/requests/create_note_request.dart';
// import 'package:note_app/models/note_model.dart';
// import 'package:note_app/models/app_response.dart';
// import 'package:note_app/repositories/core/endpoint.dart';
// import 'package:note_app/repositories/note/base_note_repository.dart';
// import 'package:note_app/utils/dio_client/dio_client.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:path_provider/path_provider.dart';

class NoteRepository extends BaseNoteRepository {
  NoteRepository({
    Dio? dioClient,
  }) : _dioClient = dioClient ?? DioClient().dio;

  final Dio _dioClient;

  Future<dynamic> getCsrfToken() async {
    try {
      var response = await _dioClient.post(
        Endpoints.token,
        data: {'USER_ID': 'tokenfix', 'PW': 'tokenfix'},
      );
      return response.data;
      // return AppResponse<Map<String, dynamic>>.fromJson(
      //     response.data , (dynamic json) {
      //   print(json);
      //
      //   return json;
      // });
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<Map<String, dynamic>> loginHtns(
      String csrf, String id, String pwd) async {
    final Response<dynamic> response = await _dioClient.post(
      Endpoints.token,
      data: {
        'USER_ID': 'benneykwag',
        'PW': 'benneykwag',
        '_csrf': csrf,
        '_spring_security_remember_me': true
      },
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getInit() async {
    final Response<dynamic> response = await _dioClient.post(
      Endpoints.getInit,
      data: {},
    );
    return response.data;
  }

  @override
  Future<AppResponse<NoteItem?>> create(CreateNoteRequest request) async {
    print("Endpoints.noteCreate ::  ${Endpoints.noteCreate}");
    final response = await _dioClient.post(
      Endpoints.noteCreate,
      data: request.toJson(),
    );

    return AppResponse<NoteItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? NoteItem.fromJson(json)
          : null,
    );
  }

  // @override
  // Future<AppResponse<int?>> deleteSingle(int id) async {
  //   final response =
  //       await _dioClient.delete("${Endpoints.noteDeleteSingle}$id");

  //   return AppResponse<int?>.fromJson(
  //     response.data,
  //     (json) => response.data['success'] && json != null ? json as int : null,
  //   );
  // }

  @override
  Future<AppResponse<List<NoteItem>?>> getMany({
    required int currentPage,
    int pageSize = 15,
  }) async {
    print("Endpoints.noteGetMany:: ${Endpoints.noteGetMany}");
    try {
      var response = await _dioClient.get(
        Endpoints.noteGetMany,
        queryParameters: {'page': currentPage, 'page_size': pageSize},
      );
      return AppResponse<List<NoteItem>?>.fromJson(
          response.data as Map<String, dynamic>, (dynamic json) {
        if (json != null && response.data['success'] == true) {
          return (json as List<dynamic>)
              .map((e) => NoteItem.fromJson(e))
              .toList();
        }
        return null;
      });
    } catch (e) {
      print(e);
      rethrow;
    }

    // return Future.delayed(Duration(seconds: 1));
  }

  // @override
  // Future<AppResponse<NoteItem?>> getSingle(int id) async {
  //   final response = await _dioClient.get("${Endpoints.noteGetSingle}$id");

  //   return AppResponse<NoteItem?>.fromJson(
  //     response.data,
  //     (dynamic json) => response.data['success'] && json != null
  //         ? NoteItem.fromJson(json)
  //         : null,
  //   );
  // }

  @override
  Future<AppResponse<NoteItem?>> update(
    UpdateNoteRequest request,
    int id,
  ) async {
    final response = await _dioClient.put(
      "${Endpoints.noteUpdate}$id",
      data: request.toJson(),
    );

    return AppResponse<NoteItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? NoteItem.fromJson(json)
          : null,
    );
  }
}
