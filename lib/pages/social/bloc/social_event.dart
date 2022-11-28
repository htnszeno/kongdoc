part of 'social_bloc.dart';

@freezed
class SocialEvent with _$SocialEvent {
  const factory SocialEvent.started() = Started;

  const factory SocialEvent.fileUpload(File file) = FileUpload;

  const factory SocialEvent.loadMore() = LoadMore;

  // 재조회
  const factory SocialEvent.refresh() = Refresh;

  const factory SocialEvent.setSelectedItem(SocialItem? selectedItem) =
      SetSelectedItem;

  // 수정
  const factory SocialEvent.update(
    UpdateSocialRequest request,
    String postId,
  ) = Update;

  // 입력
  const factory SocialEvent.create(
      CreateSocialRequest request, List<File> images) = Create;

  const factory SocialEvent.delete(String postId) = Delete;

  const factory SocialEvent.filterNotes(FilterDataType type, dynamic data) =
      Filter;

  // 좋아요
  const factory SocialEvent.addLikeCount(String postId, String userId) = AddLikeCount;

  // 게시글의 좋아요 목록 요청
  const factory SocialEvent.reqeustLikeData(String postId) = ReqeustLikeData;
}
