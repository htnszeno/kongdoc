import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:math' as math;
part 'exam_model.freezed.dart';
part 'exam_model.g.dart';

@freezed
class ExamItem with _$ExamItem {
  // int random = (math.Random().nextDouble() * 0xFFFFFF).toInt();
  // List<String> _colors = ['#fff44336', '##ffffeb3b', '#ff03a9f4'];
  factory ExamItem(
      {required int id,
        @Default(1)
      required int userId,
      required String title,
      required String body,
      @Default('#ff03a9f4') String? color
      // @Default(DateTime.now()) DateTime addedDate,
      // @JsonKey(name: "created_at")
      // @Default(new DateTime.now()) required String createdAt
      }) = _ExamItem;

  factory ExamItem.fromJson(Map<String, dynamic> json) =>
      _$ExamItemFromJson(json);
}
