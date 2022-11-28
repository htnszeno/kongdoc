import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/widget/avatar_widget.dart';

class SocialLikeItem extends StatefulWidget {
  const SocialLikeItem({
    Key? key,
    required this.likeItem,
    required this.onSave,
  }) : super(key: key);

  final SocialItem likeItem;

  final void Function() onSave;

  @override
  State<SocialLikeItem> createState() => _SocialLikeItemState();
}

class _SocialLikeItemState extends State<SocialLikeItem> {
 // late SocialBloc _socialBloc;

  @override
  void initState() {
   // _socialBloc = context.read<SocialBloc>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        // onTap: () => widget.onSocialItemPressed(widget.social),
        child: _listItem(widget.likeItem));
  }

  Widget _listItem(SocialItem social) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
            type: AvatarType.TYPE3,
            size: 40,
            nickname: social.userName,
            thumbPath: 'https://i.ytimg.com/vi/MPV2METPeJU/maxresdefault.jpg',
          ),

        ],
      ),
    );
  }
}
