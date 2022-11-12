// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_social_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateSocialRequest _$$_CreateSocialRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateSocialRequest(
      userId: json['userId'] as int,
      title: json['title'] as String?,
      body: json['body'] as String?,
      contents: json['contents'] as String?,
    );

Map<String, dynamic> _$$_CreateSocialRequestToJson(
        _$_CreateSocialRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
      'contents': instance.contents,
    };
