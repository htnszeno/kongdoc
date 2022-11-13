import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:hifive/util/util.dart';

part 'update_social_request.freezed.dart';
part 'update_social_request.g.dart';

@freezed
class UpdateSocialRequest with _$UpdateSocialRequest {
  factory UpdateSocialRequest({
    required String postId,
    String? title,
    String? contents,
  }) = _UpdateSocialRequest;

  factory UpdateSocialRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSocialRequestFromJson(json);

  factory UpdateSocialRequest.fromFromGroup(Map<String, dynamic> json) {
    Map<String, dynamic> data = {...json};
    return UpdateSocialRequest.fromJson(data);
  }
}
