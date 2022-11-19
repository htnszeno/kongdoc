import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/app/bloc/app_bloc.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/view/social_add_page.dart';
import 'package:hifive/pages/social/view/social_item_page.dart';
import 'package:hifive/pages/social/widget/social_list.dart';
import 'package:hifive/repositories/social_repository.dart';
import 'package:hifive/widget/app_top_bar.dart';
import 'package:hifive/widget/blank_content.dart';
import 'package:hifive/pages/photo/view/image_select_page.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => RepositoryProvider(
        create: (_) => SocialRepository(),
        child: BlocProvider<SocialBloc>(
          create: (context) => SocialBloc(
            socialRepository: context.read<SocialRepository>(),
          )
            ..add(const AlbumsLoaded())
            ..add(const Started()),
          child: const SocialPage(),
        ),
      ),
    );
  }

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  bool _onScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController!.position.extentAfter == 0) {
      context.read<SocialBloc>().add(const LoadMore());
    }
    return false;
  }

  void _onPressedItem(SocialItem social) {
    context.read<SocialBloc>().add(SetSelectedItem(social));
    Navigator.of(context)
        .push(SocialItemPage.route(context.read<SocialBloc>()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BlocConsumer<SocialBloc, SocialState>(
        listener: (context, state) {},
        builder: (context, state) {
          final isLoading =
              state.status.isRefreshing || state.status.isLoadingMore;
          return FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () => isLoading
                ? null
                : Navigator.of(context).push(ImageSelectPage.route()),
            child: isLoading
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
          );
        },
      ),
      appBar: const AppTopBar(),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<SocialBloc>().add(const Refresh());
        },
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) => _onScrollNotification(notification),
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
                  if (!state.hasListData) {
                    return const SliverFillRemaining(
                      child: BlankContent(),
                    );
                  }
                  return SocialList(
                      items: state.listItems,
                      onSocialItemPressed: _onPressedItem);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
