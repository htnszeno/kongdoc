part of 'note_bloc.dart';

@freezed
class NoteEvent with _$NoteEvent {
  // 최초 게시물을 불러온다.
  const factory NoteEvent.started() = Started;
  // 입력 , 수정, 삭제 후 해당 데이터를 전달
  const factory NoteEvent.filterNotes(FilterDataType type, dynamic data) =
      FilterNote;

  // 리스트로 볼지 , 격자형태로 볼지
  const factory NoteEvent.toggleViewType() = ToggleViewType;

  // 재조회
  const factory NoteEvent.refresh() = Refresh;

  // 더보기
  const factory NoteEvent.loadMore() = LoadMore;

  // 삭제
  const factory NoteEvent.delete(int id) = Delete;

  // 입력
  const factory NoteEvent.create(CreateNoteRequest request) = Create;

  // 수정
  const factory NoteEvent.update(
    UpdateNoteRequest request,
    int id,
  ) = Update;

  // 한건 선택
  const factory NoteEvent.setSelectedNote(NoteItem? note) = SetSelectedNote;

  const factory NoteEvent.token(LoginTokenRequest request) = Token;

  const factory NoteEvent.logout() = Logout;
}
