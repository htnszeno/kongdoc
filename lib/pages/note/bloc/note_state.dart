part of 'note_bloc.dart';

@freezed
class NoteState with _$NoteState {
  const NoteState._();

  const factory NoteState({
    required NoteViewType viewType,
    required List<NoteItem> notes,
    required int page,
    required bool isLastPage,
    required DataStatus status,
    required String message,
    NoteItem? note,
  }) = _NoteState;

  factory NoteState.initial() {
    return const NoteState(
        viewType: NoteViewType.list,
        notes: [],
        page: 1,
        isLastPage: false,
        status: DataStatus.initial,
        message: '',
        note: null);
  }

  bool get hasNotes => notes.isNotEmpty;

  bool get hasNote => note != null;

  bool get isProcessing =>
      status.isDeleting || status.isUpdating || status.isSubmitting;
}
