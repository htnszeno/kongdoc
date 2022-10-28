import 'package:dio/dio.dart';
import 'package:hifive/models/app_response.dart';
import 'package:hifive/models/note_model.dart';
import 'package:hifive/repositories/core/endpoint.dart';
import 'package:hifive/util/dio_client/dio_client.dart';

class ExamRepository {
  ExamRepository({
    Dio? dioClient,
  }) : _dioClient = dioClient ?? DioClient().dio;

  final Dio _dioClient;
  Future<Map<String, dynamic>> getMany() async {
    await Future.delayed(const Duration(seconds: 4));
    return {};
  }

  Future<Map<String, dynamic>> getInit() async {
    final Response<dynamic> response = await _dioClient.post(
      Endpoints.getInit,
      data: {},
    );
    return response.data;
  }
}
