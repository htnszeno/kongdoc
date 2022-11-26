import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/app/bloc/app_bloc.dart';
import 'package:hifive/app/view/app.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/models/social_model.dart';
import 'package:hifive/pages/photo/view/image_select_page.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/request/update_social_request.dart';
import 'package:hifive/pages/social/widget/social_list.dart';
import 'package:hifive/repositories/social_repository.dart';
import 'package:hifive/util/dialogs.dart';
import 'package:hifive/widget/app_top_bar.dart';
import 'package:hifive/widget/blank_content.dart';
import 'package:reactive_forms/reactive_forms.dart';

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
            // ..add(const AlbumsLoaded())
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
  late SocialBloc _socialBloc;

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

  void onSave(FormGroup formGroup) {
    FocusScope.of(context).requestFocus(FocusNode());
    SocialBloc bloc = context.read<SocialBloc>();
    if (bloc.state.isProcessing) return;
    if (formGroup.invalid) {
      formGroup.markAllAsTouched();
      return;
    }
    String postId = bloc.state.selectedItem!.postId;
    final value = formGroup.value;
    if (bloc.state.hasSelectedItem) {
      final request = UpdateSocialRequest.fromFromGroup(value);
      bloc.add(Update(request, postId));
    }
  }

  @override
  Widget build(BuildContext context) {
    _socialBloc = context.read<SocialBloc>();

    return BlocBuilder<SocialBloc, SocialState>(
      // buildWhen: (previous, current) => previous.selectedItem != current.selectedItem,
      builder: (context, state) {
        if (state.status == DataStatus.loading) {
          return const SplashPage();
        }
        final formGroup = _socialBloc.formgroup;
        return Scaffold(
          floatingActionButton: BlocConsumer<SocialBloc, SocialState>(
            listener: (context, state) {
              if (state.status.isError) {
                showMessageSnackbar(
                  state.msg,
                  color: Colors.red,
                );
              }
            },
            builder: (context, state) {
              final isLoading =
                  state.status.isRefreshing || state.status.isLoadingMore;
              return FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () => isLoading
                    ? null
                    : (state.selectedItem != null
                        ? onSave(formGroup)
                        : Navigator.of(context).push(
                            ImageSelectPage.route(context.read<SocialBloc>()))),
                child: isLoading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : Icon(
                        state.selectedItem == null ? Icons.add : Icons.check,
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
              onNotification: (notification) =>
                  _onScrollNotification(notification),
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
                        formGroup: formGroup,
                        items: state.listItems,
                        onSave: onSave,
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
