import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hifive/models/comment_model.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/widget/avatar_widget.dart';
import 'package:hifive/util/time.dart';
import 'package:timeago/timeago.dart' as timeago;

class SocialCommentItem extends StatefulWidget {
  const SocialCommentItem({
    Key? key,
    required this.commentItem,
    required this.onSelect,
  }) : super(key: key);

  final CommentItem commentItem;

  final void Function(CommentItem comment) onSelect;

  @override
  State<SocialCommentItem> createState() => _SocialCommentItemState();
}

class _SocialCommentItemState extends State<SocialCommentItem> {
 late SocialBloc _socialBloc;

  @override
  void initState() {
   _socialBloc = context.read<SocialBloc>();
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
        child: _listItem(widget.commentItem));
  }

  Widget _listItem(CommentItem comment) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.2),
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: (comment.level!*10),),
          AvatarWidget(
            type: AvatarType.TYPE3,
            size: 40,
            thumbPath:
            'https://i.ytimg.com/vi/MPV2METPeJU/maxresdefault.jpg',
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     Text('${comment!.commentUserId}', style: TextStyle(fontWeight: FontWeight.w600),),
                      const SizedBox(width: 10,),
                      Text(
                      TimeUtil.timeAgo(
                          milliseconds: comment.commentDate!.millisecondsSinceEpoch),
                      style: const TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    // Icon(FontAwesomeIcons.heart, size: 15, color: Colors.grey,),
                    const SizedBox(width: 10,)
                  ],
                ),
                const SizedBox(height: 7,),
                Text(
                  '${comment.comment}',
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: ()=> widget.onSelect(comment),
                  child: const Text(
                    '답글달기',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 5.0),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       AvatarWidget(
    //         type: AvatarType.TYPE4,
    //         size: 40,
    //         nickname: widget.commentItem.commentUserName,
    //         description : widget.commentItem.comment,
    //         time: widget.commentItem.addDate,
    //         thumbPath: 'https://i.ytimg.com/vi/MPV2METPeJU/maxresdefault.jpg',
    //       ),
    //
    //     ],
    //   ),
    // );
  }
}
