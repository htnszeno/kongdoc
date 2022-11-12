import 'package:flutter/material.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/widget/social_list_item.dart';

class SocialList extends StatelessWidget {
  const SocialList({
    Key? key,
    required this.items,
    required this.onSocialPressed,
  }) : super(key: key);

  final List<SocialItem> items;
  final void Function(SocialItem) onSocialPressed;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final item = items[index];

          return SocialListItem(
            key: ValueKey("list-item-${item.postId}"),
            social: item,
            onSocialPressed: onSocialPressed,
          );
        },
        childCount: items.length,
      ),
    );
  }
}
