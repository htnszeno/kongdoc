import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_model.freezed.dart';
part 'social_model.g.dart';

@freezed
class SocialItem with _$SocialItem {
  factory SocialItem({
    @JsonKey(name: "post_id") required String postId,
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "post_date")  String? postDate,
    required String? contents,
    @JsonKey(name: "user_name") required String userName,
     dynamic? images,
    @JsonKey(name: "is_like")  int? isLike,
    @JsonKey(name: "like_count")  int? likeCount,
  }) = _SocialItem;

  factory SocialItem.fromJson(Map<String, dynamic> json) =>
      _$SocialItemFromJson(json);
}
