import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hifive/constants.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/view/social_comment_page.dart';
import 'package:hifive/pages/social/view/social_like_page.dart';
import 'package:hifive/pages/social/widget/avatar_widget.dart';
import 'package:hifive/util/dialogs.dart';
import 'package:hifive/util/global.dart';
import 'package:hifive/widget/app_text_field.dart';
import 'package:hifive/widget/image_data.dart';
import 'package:hifive/widget/placeholders.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shimmer/shimmer.dart';

class SocialListItem extends StatefulWidget {
  const SocialListItem(
      {Key? key,
      required this.social,
      required this.onSave,
      required this.formGroup})
      : super(key: key);

  final SocialItem social;
  final FormGroup formGroup;

  final void Function(FormGroup) onSave;

  @override
  State<SocialListItem> createState() => _SocialListItemState();
}

class _SocialListItemState extends State<SocialListItem> {
  late SocialBloc _socialBloc;
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<dynamic> mgtCodes = [];
  TextEditingController _textEditingController = TextEditingController();
  late FocusNode _contentTextFieldFocusNode;

  @override
  void initState() {
    if (widget.social.images != null) {
      for (int i = 0; i < widget.social.images.length; i++) {
        mgtCodes.add(widget.social.images[i]['FILE_MGT_CODE']);
      }
    }
    _textEditingController.text = widget.social.contents!;
    _contentTextFieldFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _contentTextFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _socialBloc = context.read<SocialBloc>();
    final selectedItem =
        context.select((SocialBloc bloc) => bloc.state.selectedItem);
    return GestureDetector(
      onTap: () {
        _socialBloc.add(SetSelectedItem(null));
        FocusManager.instance.primaryFocus?.unfocus();
      },
      // onTap: () => widget.onSocialItemPressed(widget.social),
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
            title: "Are you sure?",
            content: "You want to delete this note?",
          );
          return result;
        },
        onDismissed: (_) {
          _socialBloc.add(Delete(widget.social.postId));
        },
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: BlocBuilder<SocialBloc, SocialState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _header(widget.social),
                  const SizedBox(height: 15),
                  // _postImages(widget.social),
                  // const SizedBox(height: 15),
                  _infoCount(),
                  const SizedBox(height: 15),
                  Visibility(
                    visible: !(selectedItem == widget.social),
                    child: _infoDescription(widget.social),
                  ),
                  Visibility(
                    visible: selectedItem == widget.social,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ReactiveForm(
                        formGroup: widget.formGroup,
                        child: AppTextField(
                            focusNode: _contentTextFieldFocusNode,
                            controlName: 'contents',
                            label: "",
                            maxLines: 5,
                            isRequired: true,
                            hintText: "Write your content here...",
                            onSubmitted: (value) =>
                                widget.onSave(widget.formGroup)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  _replyTextBtn(),
                  const SizedBox(height: 15),
                  _dateAgo(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _imageIndicator() {
    if (mgtCodes.length == 1) {
      return Container();
    }
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

  void _showControlPanel() {
    showModalBottomSheet(
      context: Get.context!,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
      isScrollControlled: true,
      constraints: BoxConstraints(
          maxHeight: MediaQuery.of(Get.context!).size.height -
              MediaQuery.of(Get.context!).padding.top),
      builder: (_) => Container(
        height: 400,
        // height: albums.length > 10
        //     ? Size.infinite.height
        //     : albums.length * 60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black54),
                width: 40,
                height: 4,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.star_border),
                          ),
                          const Text("즐겨찾기에 추가 ")
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(FontAwesomeIcons.outdent),
                          ),
                          const Text("친구 취소")
                        ],
                      ),
                      const Divider(),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                          context
                              .read<SocialBloc>()
                              .add(SocialEvent.setSelectedItem(widget.social));
                          _contentTextFieldFocusNode.requestFocus();
                        },
                        child: SizedBox(
                          height: 40,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15, right: 10),
                                child: Icon(Icons.edit),
                              ),
                              const Text(
                                "수정",
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(),
                      GestureDetector(
                        onTap: () async {
                          final result = await showConfirmation(
                            title: "확인",
                            content: "게시물을 삭제하시겠습니까.?",
                          );
                          if (result) {
                            Get.back();
                            context
                                .read<SocialBloc>()
                                .add(SocialEvent.delete(widget.social.postId));
                          }
                        },
                        child: Container(
                          height: 40,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15, right: 10),
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                              const Text(
                                "삭제",
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider()
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _header(SocialItem social) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
            type: AvatarType.TYPE3,
            size: 40,
            nickname: social.postUserName,
            thumbPath: 'https://i.ytimg.com/vi/MPV2METPeJU/maxresdefault.jpg',
          ),
          IconButton(
            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
            icon: const FaIcon(
              size: 20,
              FontAwesomeIcons.ellipsisVertical,
            ),
            onPressed: _showControlPanel,
          ),
        ],
      ),
    );
  }

  Widget _postImages(social) {
    // if (social.images.length == 0) {
    //   return const Text("이미지가 없습니다. ");
    // }

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
              width: double.infinity,
              child: CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: const BannerPlaceholder(),
                      ),
                  httpHeaders: {
                    'X-CSRF-TOKEN': Globals().csrfToken,
                    'Cookie': Globals().cookie,
                  },
                  fit: BoxFit.cover,
                  imageUrl:
                      '${Constants.baseApiUrl}/api/file/getDownload/Onix/$i'),
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
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: FaIcon(
                      size: 20,
                      color:
                          widget.social.isLike == 1 ? Colors.red : Colors.black,
                      widget.social.isLike == 1
                          ? FontAwesomeIcons.heartCircleBolt
                          : FontAwesomeIcons.heart),
                  onPressed: () => context.read<SocialBloc>().add(AddLikeCount(
                      widget.social.postId, Globals().session['user_id'])),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: const FaIcon(
                    size: 20,
                    FontAwesomeIcons.message,
                  ),
                  onPressed: () => Navigator.of(context)
                      .push(SocialCommentPage.route(widget.social)),
                ),
              ],
            ),
          ),
          Expanded(child: _imageIndicator()),
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
          GestureDetector(
            onTap: () =>
                Navigator.of(context).push(SocialLikePage.route(social)),
            child: Text(
              '좋아요 ${social.likeCount}개',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ExpandableText(
            social.contents!,
            // prefixText: '개발남',
            onPrefixTap: () {},
            prefixStyle: const TextStyle(fontWeight: FontWeight.bold),
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
      onTap: () =>
          Navigator.of(context).push(SocialCommentPage.route(widget.social)),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          '댓글 ${widget.social.commentCount}개 모두 보기',
          style: const TextStyle(
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
