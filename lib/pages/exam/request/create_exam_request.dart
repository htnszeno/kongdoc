import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_exam_request.freezed.dart';
part 'create_exam_request.g.dart';

@freezed
class CreateExamRequest with _$CreateExamRequest {
  factory CreateExamRequest({
    required int userId,
    String? title,
    String? body,
  }) = _CreateExamRequest;

  factory CreateExamRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateExamRequestFromJson(json);

  factory CreateExamRequest.fromFromGroup(Map<String, dynamic> json) {
    Map<String, dynamic> data = {...json};
    data['userId'] = 1;
    return CreateExamRequest.fromJson(data);
  }
}
