// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_exam_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateExamRequest _$$_CreateExamRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateExamRequest(
      userId: json['userId'] as int,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$_CreateExamRequestToJson(
        _$_CreateExamRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
    };
