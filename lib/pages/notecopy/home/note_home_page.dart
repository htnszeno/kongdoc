import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/enums/note_view_type.dart';
import 'package:hifive/models/note_model.dart';
import 'package:hifive/pages/note/add_note/add_note_page.dart';
import 'package:hifive/pages/note/home/bloc/note_home_bloc.dart';
import 'package:hifive/pages/note/home/widgets/note_app_bar.dart';
import 'package:hifive/pages/note/home/widgets/note_grid.dart';
import 'package:hifive/pages/note/home/widgets/note_list.dart';
import 'package:hifive/repositories/note/note_repository.dart';
import 'package:hifive/widgets/app_icon_button.dart';
import 'package:hifive/widgets/widgets.dart';

import '../add_note/bloc/add_note_bloc.dart';

class NoteHomePage extends StatefulWidget {
  const NoteHomePage({super.key});

  // static Page<void> page() => MaterialPage<void>(
  //         child: MultiBlocProvider(
  //       providers: [
  //         BlocProvider<NoteHomeBloc>(
  //           create: (context) => NoteHomeBloc(
  //             noteRepository: context.read<NoteRepository>(),
  //           )..add(const Started()),
  //         ),
  //         // BlocProvider<AddNoteBloc>(
  //         //   create: (context) => AddNoteBloc(
  //         //     noteBloc: context.read<NoteHomeBloc>(),
  //         //     noteRepository: context.read<NoteRepository>(),
  //         //   ),
  //         // ),
  //       ],
  //       child: const NoteHomePage(),
  //     ));

  // static Route<void> route() {
  //   return MaterialPageRoute(
  //     fullscreenDialog: true,
  //     builder: (BuildContext context) => MultiBlocProvider(
  //       providers: [
  //         BlocProvider<NoteHomeBloc>(
  //           create: (context) => NoteHomeBloc(
  //             noteRepository: context.read<NoteRepository>(),
  //           )..add(const Started()),
  //         ),
  //         // BlocProvider<AddNoteBloc>(
  //         //   create: (context) => AddNoteBloc(
  //         //     noteBloc: context.read<NoteHomeBloc>(),
  //         //     noteRepository: context.read<NoteRepository>(),
  //         //   ),
  //         // ),
  //       ],
  //       child: const NoteHomePage(),
  //     ),
  //   );
  // }

  static Route<void> route() {
    return MaterialPageRoute(
        fullscreenDialog: true, builder: (context) => NoteHomePage());
  }

  @override
  State<NoteHomePage> createState() => _NoteHomePageState();
}

class _NoteHomePageState extends State<NoteHomePage> {
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
      context.read<NoteHomeBloc>().add(const LoadMore());
    }
    return false;
  }

  void _onNotePressed(NoteItem note, NoteHomeBloc noteHomeBloc) {
    context.read<AddNoteBloc>().add(SetSelectedNote(note));
    //print("click.... ${note}");

    Navigator.of(context).push(AddNotePage.route(noteHomeBloc, note));
  }

  late NoteHomeBloc _noteHomeBloc;
  // late AddNoteBloc _addNoteBloc;
  @override
  Widget build(BuildContext context) {
    _noteHomeBloc = context.read<NoteHomeBloc>();
    // _addNoteBloc = context.read<AddNoteBloc>();
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BlocSelector<NoteHomeBloc, NoteHomeState, NoteViewType>(
                selector: (state) {
                  return state.viewType;
                },
                builder: (context, state) {
                  final noteBloc = context.read<NoteHomeBloc>();
                  return state.isGrid
                      ? AppIconButton(
                          onPressed: () => noteBloc.add(const ToggleViewType()),
                          icon: Icons.table_chart_outlined,
                          tooltip: "Show as Grid",
                        )
                      : AppIconButton(
                          onPressed: () => noteBloc.add(const ToggleViewType()),
                          tooltip: "Show as List",
                          icon: Icons.list,
                        );
                },
              ),
              AppIconButton(
                onPressed: () {},
                icon: Icons.brightness_4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BlocConsumer<NoteHomeBloc, NoteHomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          final isLoading =
              state.status.isRefreshing || state.status.isLoadingMore;
          return FloatingActionButton(
            onPressed: () => isLoading
                ? null
                : Navigator.of(context)
                    .push(AddNotePage.route(_noteHomeBloc, null)),
            backgroundColor: isLoading
                ? Theme.of(context).primaryColorLight
                : Theme.of(context).primaryColor,
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
          context.read<NoteHomeBloc>().add(const Refresh());
        },
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) => _onScrollNotification(notification),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              const AppSliverAppBar(),
              SliverPadding(
                padding: const EdgeInsets.all(10.0),
                sliver: BlocConsumer<NoteHomeBloc, NoteHomeState>(
                  listener: (_, __) {},
                  builder: (context, state) {
                    if (state.status.isLoading) {
                      return const SliverFillRemaining(
                        child: BlankContent(
                          isLoading: true,
                        ),
                      );
                    }

                    return state.viewType.isGrid
                        ? NoteGrid(
                            notes: state.notes,
                            onNotePressed: (note) =>
                                _onNotePressed(note, _noteHomeBloc))
                        : NoteList(
                            notes: state.notes,
                            onNotePressed: (note) =>
                                _onNotePressed(note, _noteHomeBloc));
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
