import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_social_request.freezed.dart';
part 'create_social_request.g.dart';

@freezed
class CreateSocialRequest with _$CreateSocialRequest {
  factory CreateSocialRequest({
    required int userId,
    String? title,
    String? body,
  }) = _CreateSocialRequest;

  factory CreateSocialRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSocialRequestFromJson(json);

  factory CreateSocialRequest.fromFromGroup(Map<String, dynamic> json) {
    Map<String, dynamic> data = {...json};
    data['userId'] = 1;
    return CreateSocialRequest.fromJson(data);
  }
}