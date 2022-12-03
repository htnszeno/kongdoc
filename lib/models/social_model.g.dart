// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocialItem _$$_SocialItemFromJson(Map<String, dynamic> json) =>
    _$_SocialItem(
      postId: json['post_id'] as String,
      userId: json['user_id'] as String?,
      postDate: json['post_date'] as String?,
      contents: json['contents'] as String?,
      userName: json['user_name'] as String?,
      images: json['images'],
      isLike: json['is_like'] as int?,
      likeCount: json['like_count'] as int?,
    );

Map<String, dynamic> _$$_SocialItemToJson(_$_SocialItem instance) =>
    <String, dynamic>{
      'post_id': instance.postId,
      'user_id': instance.userId,
      'post_date': instance.postDate,
      'contents': instance.contents,
      'user_name': instance.userName,
      'images': instance.images,
      'is_like': instance.isLike,
      'like_count': instance.likeCount,
    };
