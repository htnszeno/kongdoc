// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_exam_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateExamRequest _$$_UpdateExamRequestFromJson(Map<String, dynamic> json) =>
    _$_UpdateExamRequest(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$_UpdateExamRequestToJson(
        _$_UpdateExamRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
    };
