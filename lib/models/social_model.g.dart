// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocialItem _$$_SocialItemFromJson(Map<String, dynamic> json) =>
    _$_SocialItem(
      postId: json['post_id'] as String,
      postUserId: json['post_user_id'] as String?,
      postDate: json['post_date'] as String?,
      contents: json['contents'] as String?,
      postUserName: json['post_user_name'] as String?,
      images: json['images'],
      isLike: json['is_like'] as int?,
      likeCount: json['like_count'] as int?,
      commentCount: json['comment_count'] as int?,
    );

Map<String, dynamic> _$$_SocialItemToJson(_$_SocialItem instance) =>
    <String, dynamic>{
      'post_id': instance.postId,
      'post_user_id': instance.postUserId,
      'post_date': instance.postDate,
      'contents': instance.contents,
      'post_user_name': instance.postUserName,
      'images': instance.images,
      'is_like': instance.isLike,
      'like_count': instance.likeCount,
      'comment_count': instance.commentCount,
    };
