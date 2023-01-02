import 'package:freezed_annotation/freezed_annotation.dart';
part 'diary_model.freezed.dart';
part 'diary_model.g.dart';

@freezed
class DiaryItem with _$DiaryItem {
  factory DiaryItem({required int id}) = _DiaryItem;

  factory DiaryItem.fromJson(Map<String, dynamic> json) =>
      _$DiaryItemFromJson(json);
}
