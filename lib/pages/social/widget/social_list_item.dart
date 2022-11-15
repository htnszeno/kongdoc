import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/widget/avatar_widget.dart';
import 'package:hifive/util/dialogs.dart';
import 'package:hifive/util/formatting.dart';
import 'package:hifive/widget/image_data.dart';

class SocialListItem extends StatelessWidget {
  const SocialListItem({
    Key? key,
    required this.social,
    required this.onSocialItemPressed,
  }) : super(key: key);

  final SocialItem social;
  final void Function(SocialItem) onSocialItemPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSocialItemPressed(social),
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          _header(social),
          const SizedBox(height: 15),
          _image(),
          const SizedBox(height: 15),
          _infoCount(),
          const SizedBox(height: 15),
          _infoDescription(social),
          const SizedBox(height: 15),
          _replyTextBtn(),
          const SizedBox(height: 15),
          _dateAgo()
        ]),
      ),
    );
  }

  Widget _header(SocialItem social) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
            type: AvatarType.TYPE3,
            size: 40,
            nickname: social.addUserName,
            thumbPath: 'https://i.ytimg.com/vi/MPV2METPeJU/maxresdefault.jpg',
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(
                IconsPath.postMoreIcon,
                width: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
        imageUrl:
            'https://files.porsche.com/filestore/image/multimedia/none/982-718gt4-modelimage-sideshot/model/5b3fd684-85f2-11e9-80c4-005056bbdc38/porsche-model.png');
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageData(
                IconsPath.likeOffIcon,
                width: 65,
              ),
              const SizedBox(
                width: 15,
              ),
              ImageData(
                IconsPath.replyIcon,
                width: 60,
              ),
              const SizedBox(
                width: 15,
              ),
              ImageData(
                IconsPath.directMessage,
                width: 60,
              )
            ],
          ),
          ImageData(
            IconsPath.bookMarkOffIcon,
            width: 60,
          )
        ],
      ),
    );
  }

  Widget _infoDescription(SocialItem social) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            '좋아요 120개',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ExpandableText(
            social.contents!,
            prefixText: '개발남',
            onPrefixTap: () {},
            prefixStyle: TextStyle(fontWeight: FontWeight.bold),
            expandText: '더보기',
            collapseText: '접기',
            maxLines: 3,
            expandOnTextTap: true,
            collapseOnTextTap: true,
            linkColor: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget _replyTextBtn() {
    return GestureDetector(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          '댓글 199개 모두 보기',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ),
    );
  }

  Widget _dateAgo() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Text(
        '1일전 ',
        style: TextStyle(color: Colors.grey, fontSize: 11),
      ),
    );
  }
}
