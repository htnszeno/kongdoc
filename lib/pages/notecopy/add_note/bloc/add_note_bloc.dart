import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/enums/filter_data_type.dart';
import 'package:hifive/models/note_model.dart';
import 'package:hifive/models/request/create_note_request.dart';
import 'package:hifive/models/request/update_note_request.dart';
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
      // print("setSelectedNote======= ${event.note}");
      // emit(state.copyWith(note: event.note));
      // Future.delayed(Duration(seconds: 2));
      emit(state.copyWith(note: event.note));
    });
    on<Update>(((event, emit) async {
      if (state.status.isUpdating) return;
      emit(state.copyWith(status: DataStatus.updating));

      final result = await _noteRepository.update(event.request, event.id);

      if (result.success) {
        emit(state.copyWith(
          message: result.message,
          status: DataStatus.success,
          note: null,
        ));

        _noteBloc.add(
          FilterNote(FilterDataType.update, result.data),
        );
      } else {
        emit(state.copyWith(
          message: result.message,
          status: DataStatus.error,
        ));
      }
    }));
    on<Create>(((event, emit) async {
      // print("Create..... ${event.request}");
      if (state.status.isSubmitting) return;
      emit(state.copyWith(status: DataStatus.submitting));

      final result = await _noteRepository.create(event.request);
      print(result);
      if (result.success) {
        emit(state.copyWith(
          message: result.message,
          status: DataStatus.success,
          note: null,
        ));
        _noteBloc.add(
          FilterNote(FilterDataType.create, result.data),
        );
      } else {
        emit(state.copyWith(
          message: result.message,
          status: DataStatus.error,
        ));
      }
    }));
  }

  FormGroup get formgroup {
    if (state.hasNote) {
      // print("======== ${state.hasNote} // ${state.note!.title}");
    }
    // print("0000000");
    // print(state.hasNote ? state.note!.title : "===");
    return fb.group(
      {
        // 'title': [
        //   state.hasNote ? state.note!.title : "",
        //   Validators.required,
        // ],
        'title': FormControl<String>(
          value: state.hasNote ? state.note!.title : "===",
          // validators: [
          //   Validators.required,
          // ],
        ),
        'content': [
          state.hasNote ? state.note!.content : "",
          Validators.required,
        ],
        'color': FormControl<Color>(
          value:
              state.hasNote ? HexColor.fromHex(state.note!.color) : Colors.blue,
          validators: [
            Validators.required,
          ],
        )
      },
    );
  }
}
