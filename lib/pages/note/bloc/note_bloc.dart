import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/enums/filter_data_type.dart';
import 'package:hifive/enums/note_view_type.dart';
import 'package:hifive/models/note_model.dart';
import 'package:hifive/models/request/create_login_token.dart';
import 'package:hifive/models/request/create_note_request.dart';
import 'package:hifive/models/request/update_note_request.dart';
import 'package:hifive/repositories/repositories.dart';
import 'package:hifive/utils/utils.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'note_event.dart';
part 'note_state.dart';
part 'note_bloc.freezed.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final NoteRepository _noteRepository;
  NoteBloc({
    required NoteRepository noteRepository,
  })  : _noteRepository = noteRepository,
        super(NoteState.initial()) {
    on<Started>((event, emit) async {
      // if (state.status.isLoading) return;
      // emit(state.copyWith(status: DataStatus.loading));
    print("Started.....");
      // await _getFirstPage(emit);
    final result = await _noteRepository.getInit();
    print(result);
    });

    on<Token>((event, emit) async {
      // print('@@@@');
      final result = await _noteRepository.getCsrfToken();
      final csrf = result['signaldata']['X_CSRF_TOKEN'];
      print("csrf :::=========: ${csrf}");
      final login = await _noteRepository.loginHtns(csrf, 'user04', 'user04');
      print('login ======== ${login}');
    });

    on<SetSelectedNote>((event, emit) {
      emit(state.copyWith(note: event.note));
    });

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
        this.add(
          FilterNote(FilterDataType.create, result.data),
        );
      } else {
        emit(state.copyWith(
          message: result.message,
          status: DataStatus.error,
        ));
      }
    }));

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

        this.add(
          FilterNote(FilterDataType.update, result.data),
        );
      } else {
        emit(state.copyWith(
          message: result.message,
          status: DataStatus.error,
        ));
      }
    }));

    // 입력 수정, 삭제 후 호출
    // event : 현재 발생된 것들 입력 된 데이터가 포함.
    // emit : 기존 상태유지 값들 이미 가져온 리스트 데이터
    on<FilterNote>((event, emit) {
      List<NoteItem> notes = [...state.notes];
      switch (event.type) {
        case FilterDataType.delete:
          notes.removeWhere((element) => element.id == event.data!);
          break;
        case FilterDataType.update:
          final updateNoteIndex = notes.indexWhere(
              (element) => element.id == (event.data as NoteItem).id);
          print("updateNoteIndex ${updateNoteIndex}");
          if (updateNoteIndex != -1) {
            notes[updateNoteIndex] = event.data;
          }
          break;
        case FilterDataType.create:
          notes = [event.data, ...notes];
          break;
      }
      emit(state.copyWith(notes: notes));
    });
  }

  Future<void> _getFirstPage(Emitter<NoteState> emit) async {
    final result = await _noteRepository.getMany(currentPage: 1);
    if (result.success) {
      emit(
        state.copyWith(
          notes: result.data ?? [],
          status: DataStatus.initial,
          isLastPage: false,
          page: 1,
        ),
      );
    } else {
      emit(
        state.copyWith(
          message: result.message,
          status: DataStatus.error,
          isLastPage: false,
          page: 1,
        ),
      );
    }
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
