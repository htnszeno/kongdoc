import 'package:flutter/material.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/widget/social_list_item.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SocialList extends StatelessWidget {
  const SocialList({
    Key? key,
    required this.items,
    required this.formGroup,
    required this.onSave,
  }) : super(key: key);

  final List<SocialItem> items;
  final void Function(FormGroup) onSave;
  final FormGroup formGroup;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final item = items[index];

          return SocialListItem(
            formGroup: formGroup,
            key: ValueKey("list-item-${item.postId}"),
            social: item,
            onSave: onSave,
          );
        },
        childCount: items.length,
      ),
    );
  }
}
