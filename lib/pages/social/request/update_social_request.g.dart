// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_social_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateSocialRequest _$$_UpdateSocialRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateSocialRequest(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$_UpdateSocialRequestToJson(
        _$_UpdateSocialRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
    };
