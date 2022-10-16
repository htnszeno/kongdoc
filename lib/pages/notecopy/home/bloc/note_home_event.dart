part of 'note_home_bloc.dart';

@freezed
class NoteHomeEvent with _$NoteHomeEvent {
  const factory NoteHomeEvent.started() = Started;
  const factory NoteHomeEvent.filterNotes(FilterDataType type, dynamic data) =
      FilterNote;

  const factory NoteHomeEvent.toggleViewType() = ToggleViewType;
  const factory NoteHomeEvent.refresh() = Refresh;
  const factory NoteHomeEvent.loadMore() = LoadMore;
  const factory NoteHomeEvent.delete(int id) = Delete;
}
