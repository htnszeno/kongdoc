part of 'social_bloc.dart';

@freezed
class SocialState with _$SocialState {
  const SocialState._();

  const factory SocialState(
      {required int page,
      required DataStatus status,
      required bool isLastPage,
      required String message}) = _SocialState;

  factory SocialState.initial() {
    return const SocialState(
      page: 1,
      // items: [],
      status: DataStatus.initial,
      isLastPage: false,
      message: '',
    );
  }
}
