part of 'diary_bloc.dart';

@freezed
class DiaryState with _$DiaryState {
  const DiaryState._();

  const factory DiaryState(
      {required List<DiaryItem> listItems,
      required DiaryItem? selectedItem,
      required DataStatus status,
      required String msg}) = _SocialState;

  factory DiaryState.initial() {
    return const DiaryState(
        listItems: [], status: DataStatus.initial, msg: '', selectedItem: null);
  }
}
