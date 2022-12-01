import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hifive/app/view/app.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/widget/avatar_widget.dart';
import 'package:hifive/pages/social/widget/social_like_list.dart';
import 'package:hifive/repositories/social_repository.dart';
import 'package:hifive/widget/app_text_field.dart';
import 'package:hifive/widget/blank_content.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SocialReplyPage extends StatefulWidget {
  final SocialItem socialItem;

  const SocialReplyPage({Key? key, required this.socialItem}) : super(key: key);

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
          )..add(ReqeustLikeData(socialItem.postId)),
          child: SocialReplyPage(socialItem: socialItem),
        ),
      ),
    );
  }

  @override
  State<SocialReplyPage> createState() => _SocialReplyPageState();
}

class _SocialReplyPageState extends State<SocialReplyPage> {
  late SocialBloc _socialBloc;
  ScrollController? _scrollController;

  @override
  void initState() {
    _socialBloc = context.read<SocialBloc>();
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
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
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AvatarWidget(
                        type: AvatarType.TYPE3,
                        size: 40,
                        thumbPath:
                            'https://i.ytimg.com/vi/MPV2METPeJU/maxresdefault.jpg',
                      ),
                      SizedBox(
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
                      ))
                    ],
                  )),
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
                        if (!state.hasLikeItems) {
                          return const SliverFillRemaining(
                            child: BlankContent(),
                          );
                        }
                        return SocialLikeList(
                          likeItems: state.likeItems,
                          onSave: onSave,
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
    final formGroup = context.read<SocialBloc>().formgroup;

    return ReactiveForm(
        formGroup: formGroup,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20, right: 10),
          // color: Colors.red,
          child: Row(
            children: [
              AvatarWidget(
                type: AvatarType.TYPE3,
                size: 40,
                thumbPath:
                    'https://i.ytimg.com/vi/MPV2METPeJU/maxresdefault.jpg',
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: '댓글',
                  ),
                ),
              ),
              // const Expanded(
              //     child: AppTextField(controlName: 'reply', label: 'ss')),
              const Text(
                "게시",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }

  void onSave() {
    FocusScope.of(context).requestFocus(FocusNode());
    SocialBloc bloc = context.read<SocialBloc>();
  }
}
