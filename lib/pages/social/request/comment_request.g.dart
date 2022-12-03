// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentRequest _$$_CommentRequestFromJson(Map<String, dynamic> json) =>
    _$_CommentRequest(
      postId: json['postId'] as String,
      comment: json['comment'] as String,
      parentCommentId: json['parentCommentId'] as String?,
    );

Map<String, dynamic> _$$_CommentRequestToJson(_$_CommentRequest instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'comment': instance.comment,
      'parentCommentId': instance.parentCommentId,
    };
