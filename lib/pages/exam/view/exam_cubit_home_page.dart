import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kongdoc/app/bloc/app_bloc.dart';
import 'package:kongdoc/models/exam_model.dart';
import 'package:kongdoc/pages/exam/cubit/exam_cubit.dart';
import 'package:kongdoc/pages/exam/view/exam_bloc_item_page.dart';
import 'package:kongdoc/pages/exam/view/exam_cubit_item_page.dart';
import 'package:kongdoc/pages/exam/widget/exam_app_bar.dart';
import 'package:kongdoc/pages/exam/widget/exam_list.dart';
import 'package:kongdoc/repositories/exam_repository.dart';
import 'package:kongdoc/widget/blank_content.dart';

class ExamCubitPage extends StatefulWidget {
  const ExamCubitPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => RepositoryProvider(
        create: (_) => ExamRepository(),
        child: BlocProvider<ExamCubit>(
          create: (_) => ExamCubit(context.read<ExamRepository>()),
          child: const ExamCubitPage(),
        ),
      ),
    );
  }

  @override
  State<ExamCubitPage> createState() => _ExamCubitPageState();
}

class _ExamCubitPageState extends State<ExamCubitPage> {
  // late ExamBloc _examBloc;
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
      context.read<ExamCubit>().loadMore();
    }
    return false;
  }

  void _onNotePressed(ExamItem exam) {
    context.read<ExamCubit>().setSelectedExam(exam);
    Navigator.of(context)
        .push(ExamCubitItemPage.route(context.read<ExamCubit>()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BlocConsumer<ExamCubit, ExamState>(
        listener: (context, state) {},
        builder: (context, state) {
          final isLoading =
              state.status.isRefreshing || state.status.isLoadingMore;
          return FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () => isLoading
                ? null
                : Navigator.of(context)
                    .push(ExamCubitItemPage.route(context.read<ExamCubit>())),
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
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<ExamCubit>().refresh();
        },
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) => _onScrollNotification(notification),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              const AppSliverAppBar(),
              SliverPadding(
                padding: const EdgeInsets.all(10.0),
                sliver: BlocConsumer<ExamCubit, ExamState>(
                  listener: (_, __) {},
                  builder: (context, state) {
                    if (state.status.isLoading) {
                      return const SliverFillRemaining(
                        child: BlankContent(
                          isLoading: true,
                        ),
                      );
                    }
                    if (!state.hasExams) {
                      return const SliverFillRemaining(
                        child: BlankContent(),
                      );
                    }
                    return BlankContent();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
