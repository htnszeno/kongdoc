// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeItem _$$_HomeItemFromJson(Map<String, dynamic> json) => _$_HomeItem(
      user_id: json['user_id'] as String?,
      act_date: json['act_date'] as String?,
      eaten_kcal: json['eaten_kcal'] as int?,
      act_kcal: json['act_kcal'] as int?,
      carbs_gram: json['carbs_gram'] as int?,
      protein_gram: json['protein_gram'] as int?,
      fat_gram: json['fat_gram'] as int?,
      weight: (json['weight'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      over_weight: (json['over_weight'] as num?)?.toDouble(),
      body_fat: (json['body_fat'] as num?)?.toDouble(),
      water: (json['water'] as num?)?.toDouble(),
      water_goal: (json['water_goal'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_HomeItemToJson(_$_HomeItem instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'act_date': instance.act_date,
      'eaten_kcal': instance.eaten_kcal,
      'act_kcal': instance.act_kcal,
      'carbs_gram': instance.carbs_gram,
      'protein_gram': instance.protein_gram,
      'fat_gram': instance.fat_gram,
      'weight': instance.weight,
      'height': instance.height,
      'over_weight': instance.over_weight,
      'body_fat': instance.body_fat,
      'water': instance.water,
      'water_goal': instance.water_goal,
    };
