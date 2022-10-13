part of 'note_home_bloc.dart';

@freezed
class NoteHomeState with _$NoteHomeState {
  // const factory NoteHomeState.initial() = _Initial;
  const NoteHomeState._();

  const factory NoteHomeState({
    required NoteViewType viewType,
    required List<NoteItem> notes,
    required int page,
    required bool isLastPage,
    required DataStatus status,
    required String message,
  }) = _NoteHomeState;

  factory NoteHomeState.initial() {
    return const NoteHomeState(
      viewType: NoteViewType.list,
      notes: [],
      page: 1,
      isLastPage: false,
      status: DataStatus.initial,
      message: '',
    );
  }

  bool get hasNotes => notes.isNotEmpty;
}
