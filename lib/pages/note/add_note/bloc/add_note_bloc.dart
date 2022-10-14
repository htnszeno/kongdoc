import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/models/note_model.dart';
import 'package:hifive/pages/note/home/bloc/note_home_bloc.dart';
import 'package:hifive/repositories/repositories.dart';
import 'package:hifive/utils/utils.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'add_note_event.dart';
part 'add_note_state.dart';
part 'add_note_bloc.freezed.dart';

class AddNoteBloc extends Bloc<AddNoteEvent, AddNoteState> {
  final NoteRepository _noteRepository;
  final NoteHomeBloc _noteBloc;

  AddNoteBloc({
    required NoteRepository noteRepository,
    required NoteHomeBloc noteBloc,
  })  : _noteRepository = noteRepository,
        _noteBloc = noteBloc,
        super(AddNoteState.initial()) {
    //
    on<SetSelectedNote>((event, emit) {
      print("setSelectedNote=======");
      // emit(state.copyWith(note: event.note));
    });
  }

  FormGroup get formgroup => fb.group(
        {
          'title': [
            state.hasNote ? state.note!.title : "",
            Validators.required,
          ],
          'content': [
            state.hasNote ? state.note!.content : "",
            Validators.required,
          ],
          'color': FormControl<Color>(
            value: state.hasNote
                ? HexColor.fromHex(state.note!.color)
                : Colors.blue,
            validators: [
              Validators.required,
            ],
          )
        },
      );
}
