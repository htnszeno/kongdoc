import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hifive/app/view/app.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/models/comment_model.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/request/comment_request.dart';
import 'package:hifive/pages/social/widget/avatar_widget.dart';
import 'package:hifive/pages/social/widget/social_comment_list.dart';
import 'package:hifive/repositories/social_repository.dart';
import 'package:hifive/widget/blank_content.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SocialCommentPage extends StatefulWidget {
  final SocialItem socialItem;

  const SocialCommentPage({Key? key, required this.socialItem})
      : super(key: key);

  /// 호출한 쪽 Bloc를 공유하지 않도록 하자.
  /// 새로 생성 이후 없애도록 한다.
  static Route<void> route(SocialItem socialItem) {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => RepositoryProvider(
        create: (_) => SocialRepository(),
        child: BlocProvider<SocialBloc>(
          create: (context) => SocialBloc(
            socialRepository: context.read<SocialRepository>(),
          )..add(ReqeustCommentData(socialItem.postId)),
          child: SocialCommentPage(socialItem: socialItem),
        ),
      ),
    );
  }

  @override
  State<SocialCommentPage> createState() => _SocialCommentPageState();
}

class _SocialCommentPageState extends State<SocialCommentPage> {
  late SocialBloc _socialBloc;
  ScrollController? _scrollController;
  late FocusNode _contentTextFieldFocusNode;
  @override
  void initState() {
    _socialBloc = context.read<SocialBloc>();
    _scrollController = ScrollController();
    _contentTextFieldFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    _contentTextFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SocialBloc, SocialState>(
      builder: (context, state) {
        if (state.status == DataStatus.loading) {
          return const SplashPage();
        }
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('댓글'),
                const SizedBox(
                  width: 10,
                ),
                const FaIcon(
                  size: 20,
                  // color: Colors.red,
                  FontAwesomeIcons.heart,
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                            children: [
                              const Text('benney'),
                              const Text('3시간전'),
                            ],
                          ),
                          Text(
                            '${widget.socialItem.contents}',
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: CustomScrollView(
                  controller: _scrollController,
                  slivers: [
                    BlocConsumer<SocialBloc, SocialState>(
                      listener: (_, __) {},
                      builder: (context, state) {
                        if (state.status.isLoading) {
                          return const SliverFillRemaining(
                            child: BlankContent(
                              isLoading: true,
                            ),
                          );
                        }
                        if (!state.hasCommentItems) {
                          return const SliverFillRemaining(
                            child: BlankContent(),
                          );
                        }
                        return SocialCommentList(
                          commentItems: state.commentItems,
                          onSelect: (CommentItem comment) {
                            _socialBloc.add(SocialEvent.setSelectedCommentItem(comment));
                            _contentTextFieldFocusNode.requestFocus();
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
              _bottomReplyTextBar()
            ],
          ),
        );
      },
    );
  }

  _bottomReplyTextBar() {
    TextEditingController _textEditingController = TextEditingController();
    return BlocConsumer<SocialBloc, SocialState>(
      listener: (context, state) {
        if (state.hasSelectedCommentItem) {
        }
      },
      builder: (context, state) {

        if (state.hasSelectedCommentItem) {
          final updatedText = _textEditingController.text + '@${state.selectedCommentItem?.commentUserId} ';
          // _textEditingController.value = TextEditingValue(text: '@${state.selectedCommentItem?.commentUserId} ');
          _textEditingController.value = _textEditingController.value.copyWith(
            text: updatedText,
            selection: TextSelection.collapsed(offset: updatedText.length),
          );
        }
        return Container(
          padding: const EdgeInsets.only(bottom: 20, right: 10),
          child: Row(
            children: [
              AvatarWidget(
                type: AvatarType.TYPE3,
                size: 40,
                thumbPath:
                    'https://i.ytimg.com/vi/MPV2METPeJU/maxresdefault.jpg',
              ),
              Expanded(
                child: TextField(
                  controller: _textEditingController,
                  focusNode: _contentTextFieldFocusNode,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: '댓글',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => onSave(_textEditingController.text, state.selectedCommentItem),
                child: const Text(
                  "게시",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  void onSave(String comment, CommentItem? commentItem) {
    FocusScope.of(context).requestFocus(FocusNode());
    _socialBloc.add(CreateComment(
        CommentRequest(postId: widget.socialItem.postId, comment: comment, parentCommentId: commentItem?.commentId)));
  }
}
