import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hifive/constants.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/widget/avatar_widget.dart';
import 'package:hifive/util/dialogs.dart';
import 'package:hifive/util/global.dart';
import 'package:hifive/widget/image_data.dart';

class SocialListItem extends StatefulWidget {
  const SocialListItem({
    Key? key,
    required this.social,
    required this.onSocialItemPressed,
  }) : super(key: key);

  final SocialItem social;
  final void Function(SocialItem) onSocialItemPressed;

  @override
  State<SocialListItem> createState() => _SocialListItemState();
}

class _SocialListItemState extends State<SocialListItem> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<dynamic> mgtCodes = [];
  @override
  void initState() {
    for (int i = 0; i < widget.social.images.length; i++) {
      mgtCodes.add(widget.social.images[i]['FILE_MGT_CODE']);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onSocialItemPressed(widget.social),
      child: Dismissible(
        key: ValueKey("dismissable-${widget.social.postId}"),
        direction: DismissDirection.endToStart,
        background: Container(
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              SizedBox(
                width: 100.0,
                height: double.infinity,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 40.0,
                ),
              )
            ],
          ),
        ),
        confirmDismiss: (_) async {
          final result = showConfirmation(
            context,
            title: "Are you sure?",
            content: "You want to delete this note?",
          );
          return result;
        },
        onDismissed: (_) {
          context.read<SocialBloc>().add(Delete(widget.social.postId));
        },
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            _header(widget.social),
            const SizedBox(height: 15),
            _postImages(widget.social),
            const SizedBox(height: 15),
            _infoCount(),
            const SizedBox(height: 15),
            _infoDescription(widget.social),
            const SizedBox(height: 15),
            _replyTextBtn(),
            const SizedBox(height: 15),
            _dateAgo()
          ]),
        ),
      ),
    );
  }

  Widget _imageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: mgtCodes.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () => _controller.animateToPage(entry.key),
          child: Container(
            width: 7.0,
            height: 7.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black.withOpacity(_current == entry.key ? 0.9 : 0.4),
            ),
          ),
        );
      }).toList(),
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

  Widget _postImages(social) {
    if (social.images.length == 0) {
      return const Text("이미지가 없습니다. ");
    }

    return CarouselSlider(
      carouselController: _controller,
      options: CarouselOptions(
        height: Get.width,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
      items: mgtCodes.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CachedNetworkImage(
                  httpHeaders: {
                    'X-CSRF-TOKEN': Globals().csrfToken,
                    'Cookie': Globals().cookie,
                  },
                  imageUrl:
                      '${Constants.baseApiUrl}/api/file/getDownload/Onix/${i}'),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: Get.width / 4,
            child: Row(
              children: [
                ImageData(
                  IconsPath.likeOffIcon,
                  width: 65,
                ),
                const SizedBox(
                  width: 10,
                ),
                ImageData(
                  IconsPath.replyIcon,
                  width: 60,
                ),
                const SizedBox(
                  width: 10,
                ),
                ImageData(
                  IconsPath.directMessage,
                  width: 60,
                ),
              ],
            ),
          ),
          _imageIndicator(),
          SizedBox(
            width: Get.width / 4,
            child: Row(
              children: [
                const Spacer(),
                ImageData(
                  IconsPath.bookMarkOffIcon,
                  width: 60,
                )
              ],
            ),
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
