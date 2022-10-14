import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/models/note_model.dart';
import 'package:hifive/pages/note/add_note/add_note_page.dart';
import 'package:hifive/pages/note/home/bloc/note_home_bloc.dart';
import 'package:hifive/pages/note/home/widgets/note_app_bar.dart';
import 'package:hifive/pages/note/home/widgets/note_list.dart';
import 'package:hifive/repositories/note/note_repository.dart';
import 'package:hifive/widgets/app_icon_button.dart';
import 'package:hifive/widgets/widgets.dart';

import '../add_note/bloc/add_note_bloc.dart';

class NoteHomePage extends StatefulWidget {
  const NoteHomePage({super.key});

  static Page<void> page() => MaterialPage<void>(
          child: MultiBlocProvider(
        providers: [
          BlocProvider<NoteHomeBloc>(
            create: (context) => NoteHomeBloc(
              noteRepository: context.read<NoteRepository>(),
            )..add(const Started()),
          ),
        ],
        child: const NoteHomePage(),
      ));

  static Route<void> route() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => BlocProvider(
        create: (context) => NoteHomeBloc(
          noteRepository: context.read<NoteRepository>(),
        )..add(const Started()),
        child: const NoteHomePage(),
      ),
    );
  }

  //   static Route<void> route({Todo? initialTodo}) {
  //   return MaterialPageRoute(
  //     fullscreenDialog: true,
  //     builder: (context) => BlocProvider(
  //       create: (context) => EditTodoBloc(
  //         todosRepository: context.read<TodosRepository>(),
  //         initialTodo: initialTodo,
  //       ),
  //       child: const EditTodoPage(),
  //     ),
  //   );
  // }

  @override
  State<NoteHomePage> createState() => _NoteHomePageState();
}

class _NoteHomePageState extends State<NoteHomePage> {
  void _onNotePressed(NoteItem note) {
    // context.read<AddNoteBloc>().add(SetSelectedNote(note));
    // Navigator.of(context).pushNamed(AddNoteScreen.routeName);
  }
  late NoteHomeBloc _noteHomeBloc;
  @override
  Widget build(BuildContext context) {
    _noteHomeBloc = context.read<NoteHomeBloc>();
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppIconButton(
                onPressed: () => {},
                icon: Icons.table_chart_outlined,
                tooltip: "Show as Grid",
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(AddNotePage.route(_noteHomeBloc));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const AppSliverAppBar(),
          // BlocBuilder<NoteHomeBloc, NoteHomeState>(
          //   builder: (context, state) {
          //     return NoteList(
          //       notes: state.notes,
          //       onNotePressed: _onNotePressed,
          //     );
          //   },
          // ),
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

                return NoteList(
                  notes: state.notes,
                  onNotePressed: _onNotePressed,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
