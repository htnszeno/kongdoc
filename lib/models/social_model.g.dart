// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocialItem _$$_SocialItemFromJson(Map<String, dynamic> json) =>
    _$_SocialItem(
      postId: json['post_id'] as String,
      userId: json['user_id'] as String,
      postDate: json['post_date'] as String,
      title: json['title'] as String,
      contents: json['contents'] as String?,
      addUserName: json['add_user_name'] as String,
    );

Map<String, dynamic> _$$_SocialItemToJson(_$_SocialItem instance) =>
    <String, dynamic>{
      'post_id': instance.postId,
      'user_id': instance.userId,
      'post_date': instance.postDate,
      'title': instance.title,
      'contents': instance.contents,
      'add_user_name': instance.addUserName,
    };
