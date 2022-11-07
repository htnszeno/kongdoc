import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/models/exam_model.dart';
import 'package:hifive/pages/exam/bloc/exam_bloc.dart';
import 'package:hifive/pages/exam/view/exam_bloc_item_page.dart';
import 'package:hifive/pages/exam/widget/exam_app_bar.dart';
import 'package:hifive/pages/exam/widget/exam_list.dart';
import 'package:hifive/repositories/exam_repository.dart';
import 'package:hifive/widget/blank_content.dart';

class ExamCubitPage extends StatefulWidget {
  const ExamCubitPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => RepositoryProvider(
        create: (_) => ExamRepository(),
        child: BlocProvider<ExamBloc>(
          create: (context) => ExamBloc(
            examRepository: context.read<ExamRepository>(),
          )..add(const Started()),
          child: const ExamCubitPage(),
        ),
      ),
    );
  }

  @override
  State<ExamCubitPage> createState() => _ExamCubitPageState();
}

class _ExamCubitPageState extends State<ExamCubitPage> {
  late ExamBloc _examBloc;
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
      context.read<ExamBloc>().add(const LoadMore());
    }
    return false;
  }

  void _onNotePressed(ExamItem exam) {
    context.read<ExamBloc>().add(SetSelectedExam(exam));
    // Navigator.of(context).pushNamed(AddNoteScreen.routeName);
    Navigator.of(context)
        .push(ExamBlocItemPage.route(context.read<ExamBloc>()));
  }

  @override
  Widget build(BuildContext context) {
    _examBloc = context.read<ExamBloc>();
    return Scaffold(
      floatingActionButton: BlocConsumer<ExamBloc, ExamState>(
        listener: (context, state) {},
        builder: (context, state) {
          final isLoading =
              state.status.isRefreshing || state.status.isLoadingMore;
          return FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () => isLoading
                ? null
                : Navigator.of(context)
                    .push(ExamBlocItemPage.route(context.read<ExamBloc>())),
            child: isLoading
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
          );
        },
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<ExamBloc>().add(const Refresh());
        },
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) => _onScrollNotification(notification),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              const AppSliverAppBar(),
              SliverPadding(
                padding: const EdgeInsets.all(10.0),
                sliver: BlocConsumer<ExamBloc, ExamState>(
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
                    return ExamList(
                      items: state.items,
                      onNotePressed: _onNotePressed,
                    );
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
