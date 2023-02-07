part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    required DataStatus status,
    required String msg,
    required HomeItem? homeItem,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
      status: DataStatus.initial,
      msg: '',
      homeItem : null,
    );
  }
}