import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:kongdoc/util/util.dart';

part 'update_exam_request.freezed.dart';
part 'update_exam_request.g.dart';

@freezed
class UpdateExamRequest with _$UpdateExamRequest {
  factory UpdateExamRequest({
    required int id,
    required int userId,
    String? title,
    String? body,
  }) = _UpdateExamRequest;

  factory UpdateExamRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateExamRequestFromJson(json);

  factory UpdateExamRequest.fromFromGroup(Map<String, dynamic> json) {
    Map<String, dynamic> data = {...json};

    return UpdateExamRequest.fromJson(data);
  }
}
