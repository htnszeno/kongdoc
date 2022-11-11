import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_model.freezed.dart';
part 'social_model.g.dart';

@freezed
class SocialItem with _$SocialItem {
  factory SocialItem({
    @JsonKey(name: "user_id")
    required String userId,
    @JsonKey(name: "user_name_loc")
    required String userName,
  }) = _SocialItem;

  factory SocialItem.fromJson(Map<String, dynamic> json) =>
      _$SocialItemFromJson(json);
}
