import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_model.freezed.dart';

part 'comment_model.g.dart';

@freezed
class CommentItem with _$CommentItem {
  factory CommentItem({
    @JsonKey(name: "post_id") required String postId,
    @JsonKey(name: "comment_id") required String commentId,
    @JsonKey(name: "parent_comment_id") required String parentCommentId,
    @JsonKey(name: "comment_user_id") String? commentUserId,
    @JsonKey(name: "comment_user_name") String? commentUserName,
    @JsonKey(name: "comment_date") DateTime? commentDate,
    required String? comment,
    int? level,
  }) = _CommentItem;

  factory CommentItem.fromJson(Map<String, dynamic> json) =>
      _$CommentItemFromJson(json);
}
