// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExamItem _$$_ExamItemFromJson(Map<String, dynamic> json) => _$_ExamItem(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
      color: json['color'] as String? ?? '#fff44336',
    );

Map<String, dynamic> _$$_ExamItemToJson(_$_ExamItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
      'color': instance.color,
    };
