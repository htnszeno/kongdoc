import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_model.freezed.dart';
part 'social_model.g.dart';

@freezed
class SocialItem with _$SocialItem {
  factory SocialItem({
    @JsonKey(name: "post_id") required String postId,
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "post_date") required String postDate,
    required String title,
    required String? contents,
    @JsonKey(name: "add_user_name") required String addUserName,
  }) = _SocialItem;

  factory SocialItem.fromJson(Map<String, dynamic> json) =>
      _$SocialItemFromJson(json);
}
