// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentItem _$$_CommentItemFromJson(Map<String, dynamic> json) =>
    _$_CommentItem(
      postId: json['post_id'] as String,
      commentId: json['comment_id'] as String,
      parentCommentId: json['parent_comment_id'] as String,
      commentUserId: json['comment_user_id'] as String?,
      commentUserName: json['comment_user_name'] as String?,
      commentDate: json['comment_date'] == null
          ? null
          : DateTime.parse(json['comment_date'] as String),
      comment: json['comment'] as String?,
      level: json['level'] as int?,
    );

Map<String, dynamic> _$$_CommentItemToJson(_$_CommentItem instance) =>
    <String, dynamic>{
      'post_id': instance.postId,
      'comment_id': instance.commentId,
      'parent_comment_id': instance.parentCommentId,
      'comment_user_id': instance.commentUserId,
      'comment_user_name': instance.commentUserName,
      'comment_date': instance.commentDate?.toIso8601String(),
      'comment': instance.comment,
      'level': instance.level,
    };
