import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hifive/enums/data_status.dart';
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
    on<Started>((event, emit) async {
      if (state.status.isLoading) return;
      emit(state.copyWith(status: DataStatus.loading));

      await _getFirstPage(emit);
    });
    on<NoteHomeEvent>((event, emit) {});
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
