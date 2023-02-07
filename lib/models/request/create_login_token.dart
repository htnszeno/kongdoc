import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:kongdoc/util/util.dart';

part 'create_login_token.freezed.dart';
part 'create_login_token.g.dart';

@freezed
class LoginTokenRequest with _$LoginTokenRequest {
  factory LoginTokenRequest({
    required String USER_ID,
    required String PW,
  }) = _LoginTokenRequest;

  factory LoginTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginTokenRequestFromJson(json);

  factory LoginTokenRequest.fromFromGroup(Map<String, dynamic> json) {
    Map<String, dynamic> data = {...json};

    return LoginTokenRequest.fromJson(data);
  }
}
