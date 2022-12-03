import 'package:flutter/material.dart';
import 'package:hifive/models/comment_model.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/widget/social_comment_item.dart';
import 'package:hifive/pages/social/widget/social_like_item.dart';
import 'package:hifive/pages/social/widget/social_list_item.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SocialCommentList extends StatelessWidget {
  const SocialCommentList({
    Key? key,
    required this.commentItems,
    required this.onSelect,
  }) : super(key: key);

  final List<CommentItem> commentItems;
  final void Function(CommentItem comment) onSelect;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final item = commentItems[index];

          return SocialCommentItem(
            key: ValueKey("list-item-${item.postId}"),
            commentItem: item,
            onSelect: onSelect,
          );
        },
        childCount: commentItems.length,
      ),
    );
  }
}
