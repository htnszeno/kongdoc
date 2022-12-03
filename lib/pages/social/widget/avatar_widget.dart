import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hifive/util/time.dart';

enum AvatarType { TYPE1, TYPE2, TYPE3, TYPE4 }

class AvatarWidget extends StatelessWidget {
  bool? hasStory;
  String thumbPath;
  String? nickname;
  AvatarType type;
  double? size;
  String? description;
  DateTime? time;

  AvatarWidget({
    Key? key,
    required this.type,
    required this.thumbPath,
    this.hasStory,
    this.nickname,
    this.size = 65,
    this.description,
    this.time,
  }) : super(key: key);

  Widget type1Widget() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.purple, Colors.orange],
          ),
          shape: BoxShape.circle),
      child: type2Widget(),
    );
  }

  Widget type2Widget() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size!),
        child: SizedBox(
          width: size,
          height: size,
          child: CachedNetworkImage(
            imageUrl: thumbPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AvatarType.TYPE1:
        return type1Widget();
        break;
      case AvatarType.TYPE2:
        return type2Widget();
        break;
      case AvatarType.TYPE3:
        return type3Widget();
        break;
      case AvatarType.TYPE4:
        return type4Widget();
        break;
    }
    return Container();
  }

  Widget type3Widget() {
    return Row(
      children: [
        type1Widget(),
        Text(
          nickname ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )
      ],
    );
  }

  Widget type4Widget() {
    // return Column(
    //   children: [
    //     Expanded(
    //       child: ExpandableText(
    //         description!,
    //         // prefixText: '개발남',
    //         onPrefixTap: () {},
    //         prefixStyle: const TextStyle(fontWeight: FontWeight.bold),
    //         expandText: '더보기',
    //         collapseText: '접기',
    //         maxLines: 3,
    //         // expandOnTextTap: true,
    //         // collapseOnTextTap: true,
    //         // linkColor: Colors.grey,
    //       ),
    //     ),
    //   ],
    // );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          type1Widget(),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    nickname ?? '',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    TimeUtil.timeAgo(
                        milliseconds: time!.millisecondsSinceEpoch),
                    style: const TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: Get.context!.width-100,
                child: ExpandableText(
                  description!,
                  // prefixText: '개발남',
                  onPrefixTap: () {},
                  prefixStyle: const TextStyle(fontWeight: FontWeight.bold),
                  expandText: '더보기',
                  collapseText: '접기',
                  maxLines: 3,
                  // expandOnTextTap: true,
                  // collapseOnTextTap: true,
                  // linkColor: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '답글달기',
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
