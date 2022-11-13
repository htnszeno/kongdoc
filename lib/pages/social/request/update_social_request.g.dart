// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_social_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateSocialRequest _$$_UpdateSocialRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateSocialRequest(
      postId: json['postId'] as String,
      title: json['title'] as String?,
      contents: json['contents'] as String?,
    );

Map<String, dynamic> _$$_UpdateSocialRequestToJson(
        _$_UpdateSocialRequest instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'title': instance.title,
      'contents': instance.contents,
    };
