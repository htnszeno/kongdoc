part of 'social_bloc.dart';

@freezed
class SocialEvent with _$SocialEvent {
  const factory SocialEvent.started() = Started;

  const factory SocialEvent.loadMore() = LoadMore;

  // 재조회
  const factory SocialEvent.refresh() = Refresh;

  const factory SocialEvent.setSelectedItem(SocialItem? selectedItem) = SetSelectedItem;

  // 수정
  const factory SocialEvent.update(
      UpdateSocialRequest request,
      int id,
      ) = Update;

  // 입력
  const factory SocialEvent.create(
      CreateSocialRequest request,
      ) = Create;
}
