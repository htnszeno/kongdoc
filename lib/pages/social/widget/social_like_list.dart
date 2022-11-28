import 'package:flutter/material.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/widget/social_like_item.dart';
import 'package:hifive/pages/social/widget/social_list_item.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SocialLikeList extends StatelessWidget {
  const SocialLikeList({
    Key? key,
    required this.likeItems,
    required this.onSave,
  }) : super(key: key);

  final List<SocialItem> likeItems;
  final void Function() onSave;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final item = likeItems[index];

          return SocialLikeItem(
            key: ValueKey("list-item-${item.postId}"),
            likeItem: item,
            onSave: onSave,
          );
        },
        childCount: likeItems.length,
      ),
    );
  }
}
