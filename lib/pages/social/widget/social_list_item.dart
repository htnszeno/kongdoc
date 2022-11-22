import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/constants.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/widget/avatar_widget.dart';
import 'package:hifive/util/dialogs.dart';
import 'package:hifive/util/global.dart';
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
      child: Dismissible(
        key: ValueKey("dismissable-${social.postId}"),
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
          context.read<SocialBloc>().add(Delete(social.postId));
        },
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            _header(social),
            const SizedBox(height: 15),
                _imageSelectList(social),

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
      ),
    );
  }

  Widget _imageSelectList(social) {
    print("===// ==== ${social.images.length}");
if(social.images.length == 0){
  return Container(child: Text("이미지가 없습니다. "),);
}
    return  GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            childAspectRatio: 1),
        itemCount: social.images.length,
        itemBuilder: (BuildContext context, int index) {
          var image = social.images[index];
          return CachedNetworkImage(
              httpHeaders: {
                'X-CSRF-TOKEN': Globals().csrfToken,
                'Cookie': Globals().cookie,
              },
              imageUrl:
              '${Constants.baseApiUrl}/api/file/getDownload/Onix/${image['file_mgt_code']}'
              // 'http://localhost:18080/nfs_share/20221121/1668996571968.jpg'
              // 'https://files.porsche.com/filestore/image/multimedia/none/982-718gt4-modelimage-sideshot/model/5b3fd684-85f2-11e9-80c4-005056bbdc38/porsche-model.png'
          );
        },
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

  Future _future() async {
    await Future.delayed(Duration(seconds: 5)); // 5초를 강제적으로 딜레이 시킨다.
    return '짜잔!'; // 5초 후 '짜잔!' 리턴
  }

  Widget _image(social) {
    // return Image.network(
    //   'http://192.168.40.2:18080/api/file/download/APP/1668996571968',
    //   headers:{
    //     'X-CSRF-TOKEN': '35fcd95c-1a22-4224-a79c-56b39cd4'
    //   },
    //   // 'http://localhost:18080/nfs_share/20221121/1668996571968.jpg'
    //   // 'https://files.porsche.com/filestore/image/multimedia/none/982-718gt4-modelimage-sideshot/model/5b3fd684-85f2-11e9-80c4-005056bbdc38/porsche-model.png'
    // );
    print({
      'X-CSRF-TOKEN': Globals().csrfToken,
      'Cookie': Globals().cookie,
      'URL': '${Constants.baseApiUrl}/api/file/getDownload/Onix/APP/1669023471495'
    });
    return CachedNetworkImage(
        httpHeaders: {
          'X-CSRF-TOKEN': Globals().csrfToken,
          'Cookie': Globals().cookie,

        },
        imageUrl:
            // '${Constants.baseApiUrl}/api/file/getDownload/Onix/1669023471495'
        // 'http://localhost:18080/nfs_share/20221121/1668996571968.jpg'
        'https://files.porsche.com/filestore/image/multimedia/none/982-718gt4-modelimage-sideshot/model/5b3fd684-85f2-11e9-80c4-005056bbdc38/porsche-model.png'
        );
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
