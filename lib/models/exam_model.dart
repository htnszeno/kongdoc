import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:math' as math;
part 'exam_model.freezed.dart';
part 'exam_model.g.dart';

@freezed
class ExamItem with _$ExamItem {
  factory ExamItem(
      {required int id,
      required int userId,
      required String title,
      required String body,
      @Default('#ff03a9f4') String? color}) = _ExamItem;

  factory ExamItem.fromJson(Map<String, dynamic> json) =>
      _$ExamItemFromJson(json);
}
