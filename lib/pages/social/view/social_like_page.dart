import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hifive/app/view/app.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/widget/social_like_item.dart';
import 'package:hifive/pages/social/widget/social_like_list.dart';
import 'package:hifive/repositories/social_repository.dart';
import 'package:hifive/widget/blank_content.dart';

class SocialLikePage extends StatefulWidget {
  final SocialItem socialItem;

  const SocialLikePage({Key? key, required this.socialItem}) : super(key: key);

  /**
   * 호출한 쪽 Bloc를 공유하지 않도록 하자.
   * 새로 생성 이후 없애도록 한다.
   */
  static Route<void> route(SocialItem socialItem) {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => RepositoryProvider(
        create: (_) => SocialRepository(),
        child: BlocProvider<SocialBloc>(
          create: (context) => SocialBloc(
            socialRepository: context.read<SocialRepository>(),
          )..add(ReqeustLikeData(socialItem.postId)),
          child: SocialLikePage(socialItem: socialItem),
        ),
      ),
    );
  }

  @override
  State<SocialLikePage> createState() => _SocialLikePageState();
}

class _SocialLikePageState extends State<SocialLikePage> {
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
    return Container(child: Text("ddd"),);
    // return BlocBuilder<SocialBloc, SocialState>(
    //   builder: (context, state) {
    //     if (state.status == DataStatus.loading) {
    //       return const SplashPage();
    //     }
    //     return Scaffold(
    //       appBar: AppBar(
    //         centerTitle: false,
    //         title: Row(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: [
    //             const Text('좋아요'),
    //             const SizedBox(
    //               width: 10,
    //             ),
    //             const FaIcon(
    //               size: 20,
    //               // color: Colors.red,
    //               FontAwesomeIcons.heart,
    //             ),
    //           ],
    //         ),
    //       ),
    //       body: Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: CustomScrollView(
    //           controller: _scrollController,
    //           slivers: [
    //             BlocConsumer<SocialBloc, SocialState>(
    //               listener: (_, __) {},
    //               builder: (context, state) {
    //                 if (state.status.isLoading) {
    //                   return const SliverFillRemaining(
    //                     child: BlankContent(
    //                       isLoading: true,
    //                     ),
    //                   );
    //                 }
    //                 if (!state.hasLikeItems) {
    //                   return const SliverFillRemaining(
    //                     child: BlankContent(),
    //                   );
    //                 }
    //                 return SocialLikeList(
    //                   likeItems: state.likeItems,
    //                   onSave: onSave,
    //                 );
    //               },
    //             )
    //           ],
    //         ),
    //       ),
    //     );
    //   },
    // );
  }

  void onSave() {
    FocusScope.of(context).requestFocus(FocusNode());
    SocialBloc bloc = context.read<SocialBloc>();
  }
}
