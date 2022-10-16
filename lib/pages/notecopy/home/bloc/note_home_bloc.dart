import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/enums/filter_data_type.dart';
import 'package:hifive/enums/note_view_type.dart';
import 'package:hifive/models/note_model.dart';
import 'package:hifive/repositories/repositories.dart';

part 'note_home_event.dart';
part 'note_home_state.dart';
part 'note_home_bloc.freezed.dart';

class NoteHomeBloc extends Bloc<NoteHomeEvent, NoteHomeState> {
  final NoteRepository _noteRepository;

  NoteHomeBloc({
    required NoteRepository noteRepository,
  })  : _noteRepository = noteRepository,
        super(NoteHomeState.initial()) {
    /**
     * 최초 데이터 불러옴.
     */
    on<Started>((event, emit) async {
      if (state.status.isLoading) return;
      emit(state.copyWith(status: DataStatus.loading));

      await _getFirstPage(emit);
    });

    on<Refresh>((event, emit) async {
      if (state.status.isRefreshing) return;

      emit(state.copyWith(status: DataStatus.refreshing));

      await _getFirstPage(emit);
    });
    on<ToggleViewType>((event, emit) {
      emit(state.copyWith(
        viewType: state.viewType.isGrid ? NoteViewType.list : NoteViewType.grid,
      ));
    });

    on<NoteHomeEvent>((event, emit) {});
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

  Future<void> _getFirstPage(Emitter<NoteHomeState> emit) async {
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
}
