import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/pages/note/add_note/bloc/add_note_bloc.dart';
import 'package:hifive/pages/note/home/bloc/note_home_bloc.dart';
import 'package:hifive/repositories/repositories.dart';
import 'package:hifive/widgets/app_text_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: AddNotePage());

  static Route<void> route() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => BlocProvider(
        create: (context) => AddNoteBloc(
          noteRepository: context.read<NoteRepository>(),
          noteBloc: context.read<NoteHomeBloc>(),
        ),
        child: const AddNotePage(),
      ),
    );
  }

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  late AddNoteBloc _addNoteBloc;
  @override
  void dispose() {
    // _addNoteBloc.add(const SetSelectedNote(null));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _addNoteBloc = context.read<AddNoteBloc>();

    final isEditing = _addNoteBloc.state.hasNote;
    final formGroup = _addNoteBloc.formgroup;

    return Scaffold(
      appBar: AppBar(title: Text('Add New Note')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: ReactiveForm(
            child: Column(
          children: [AppTextField(controlName: 'title', label: 'Title')],
        )),
      ),
    );
  }
}
