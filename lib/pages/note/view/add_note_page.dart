import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/models/note_model.dart';
import 'package:hifive/models/request/create_note_request.dart';
import 'package:hifive/models/request/update_note_request.dart';
import 'package:hifive/pages/note/bloc/note_bloc.dart';
import 'package:hifive/pages/note/view/note_home_page.dart';
import 'package:hifive/repositories/repositories.dart';
import 'package:hifive/util/util.dart';
import 'package:hifive/widget/app_text_field.dart';
import 'package:reactive_color_picker/reactive_color_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: AddNotePage());

  static Route<void> route(NoteBloc bloc) {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (_) => BlocProvider.value(
        value: bloc,
        child: const AddNotePage(),
      ),
    );
  }
  // static Route<void> route() {
  //   return MaterialPageRoute(
  //     fullscreenDialog: true,
  //     builder: (BuildContext context) => const AddNotePage(),
  //   );
  // }

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  late NoteBloc _addNoteBloc;
  @override
  void dispose() {
    _addNoteBloc.add(const SetSelectedNote(null));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _addNoteBloc = context.read<NoteBloc>();
    final isEditing = _addNoteBloc.state.hasNote;
    print("isEditing ${_addNoteBloc.state.hasNote}");
    final formGroup = _addNoteBloc.formgroup;

    return Scaffold(
      appBar:
          AppBar(title: Text('Add New Note ${_addNoteBloc.state.note?.title}')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: ReactiveForm(
          formGroup: formGroup,
          child: Column(
            children: [
              const AppTextField(controlName: 'title', label: 'Title'),
              const SizedBox(
                height: 20.0,
              ),
              const AppTextField(
                controlName: 'content',
                label: "Content",
                maxLines: 5,
                isRequired: true,
                hintText: "Write your content here...",
              ),
              const SizedBox(
                height: 20.0,
              ),
              ReactiveBlockColorPicker<Color>(
                decoration: InputDecoration(
                  labelText: "Color",
                  hintText: "Select a color",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                formControlName: 'color',
              )
            ],
          ),
        ),
      ),
      floatingActionButton: BlocConsumer<NoteBloc, NoteState>(
        listener: (context, state) {
          if (state.isProcessing) {
            showMessageSnackbar(
              "Processing...",
            );
          } else if (state.status.isSuccess) {
            showMessageSnackbar(
              state.msg,
            );
            // Navigator.pop(context);
            Navigator.of(context).pop();
            // Navigator.of(context).popAndPushNamed('/note_home');
          } else if (state.status.isError) {
            showMessageSnackbar(
              state.msg,
              color: Colors.red,
            );
          }
        },
        builder: (context, state) {
          return FloatingActionButton(
            onPressed: () {
              if (state.isProcessing) return;
              if (formGroup.invalid) {
                // This will validate all [isRequired] AppTextField
                formGroup.markAllAsTouched();
                return;
              }
              final value = formGroup.value;

              if (state.hasNote) {
                final request = UpdateNoteRequest.fromFromGroup(value);
                _addNoteBloc.add(Update(request, state.note!.id));
              } else {
                final request = CreateNoteRequest.fromFromGroup(value);
                _addNoteBloc.add(Create(request));
              }
            },
            child: state.isProcessing
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : Icon(Icons.check),
          );
        },
      ),
    );
  }
}
