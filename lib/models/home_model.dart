import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:math' as math;
part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeItem with _$HomeItem {
  factory HomeItem(
      {
        @JsonKey(name: "user_id") required String? user_id,
        @JsonKey(name: "act_date") required String? act_date,

        @JsonKey(name: "eaten_kcal") required int? eaten_kcal,
        @JsonKey(name: "act_kcal") required int? act_kcal,
        @JsonKey(name: "carbs_gram") required int? carbs_gram,
        @JsonKey(name: "protein_gram") required int? protein_gram,
        @JsonKey(name: "fat_gram") required int? fat_gram,

        @JsonKey(name: "weight") required double? weight,
        @JsonKey(name: "height") required double? height,
        @JsonKey(name: "over_weight") required double? over_weight,
        @JsonKey(name: "body_fat") required double? body_fat,
        @JsonKey(name: "water") required double? water,
        @JsonKey(name: "water_goal") required double? water_goal,

        }) = _HomeItem;

  factory HomeItem.fromJson(Map<String, dynamic> json) =>
      _$HomeItemFromJson(json);
}
