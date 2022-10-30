import 'package:dio/dio.dart';
import 'package:hifive/models/app_response.dart';
import 'package:hifive/models/exam_model.dart';
import 'package:hifive/pages/exam/request/create_exam_request.dart';
import 'package:hifive/pages/exam/request/update_exam_request.dart';
import 'package:hifive/repositories/core/endpoint.dart';

import '../pages/exam/dio/dio_client.dart';

class ExamRepository {
  ExamRepository({
    Dio? dioClient,
  }) : _dioClient = dioClient ?? DioClient().dio;

  final Dio _dioClient;
  Future<AppResponse<List<ExamItem>?>> getMany({
    required int currentPage,
    int limit = 10,
  }) async {
    int start = currentPage == 1 ? 0 : ((currentPage * limit) - limit);

    final response = await _dioClient.get(
      '/posts',
      queryParameters: {'_start': start, '_limit': limit},
    );
    return AppResponse<List<ExamItem>?>.fromJson(response.data, (dynamic json) {
      if (json != null && response.data['success']) {
        return (json as List<dynamic>)
            .map((e) => ExamItem.fromJson(e))
            .toList();
      }
      return null;
    });
  }

  Future<AppResponse<ExamItem?>> getSingle({required int id}) async {
    final response = await _dioClient.get("/posts/$id");

    return AppResponse<ExamItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? ExamItem.fromJson(json)
          : null,
    );
  }

  Future<AppResponse<ExamItem?>> update(
    UpdateExamRequest request,
    int id,
  ) async {
    final response = await _dioClient.put(
      "/posts/$id",
      data: request.toJson(),
    );

    return AppResponse<ExamItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? ExamItem.fromJson(json)
          : null,
    );
  }

  Future<AppResponse<ExamItem?>> create(
    CreateExamRequest request
  ) async {
    final response = await _dioClient.post(
      "/posts",
      data: request.toJson(),
    );

    return AppResponse<ExamItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? ExamItem.fromJson(json)
          : null,
    );
  }
}
