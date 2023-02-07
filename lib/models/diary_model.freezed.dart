// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiaryItem _$DiaryItemFromJson(Map<String, dynamic> json) {
  return _DiaryItem.fromJson(json);
}

/// @nodoc
mixin _$DiaryItem {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaryItemCopyWith<DiaryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryItemCopyWith<$Res> {
  factory $DiaryItemCopyWith(DiaryItem value, $Res Function(DiaryItem) then) =
      _$DiaryItemCopyWithImpl<$Res, DiaryItem>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$DiaryItemCopyWithImpl<$Res, $Val extends DiaryItem>
    implements $DiaryItemCopyWith<$Res> {
  _$DiaryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiaryItemCopyWith<$Res> implements $DiaryItemCopyWith<$Res> {
  factory _$$_DiaryItemCopyWith(
          _$_DiaryItem value, $Res Function(_$_DiaryItem) then) =
      __$$_DiaryItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DiaryItemCopyWithImpl<$Res>
    extends _$DiaryItemCopyWithImpl<$Res, _$_DiaryItem>
    implements _$$_DiaryItemCopyWith<$Res> {
  __$$_DiaryItemCopyWithImpl(
      _$_DiaryItem _value, $Res Function(_$_DiaryItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DiaryItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiaryItem implements _DiaryItem {
  _$_DiaryItem({required this.id});

  factory _$_DiaryItem.fromJson(Map<String, dynamic> json) =>
      _$$_DiaryItemFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'DiaryItem(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiaryItem &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiaryItemCopyWith<_$_DiaryItem> get copyWith =>
      __$$_DiaryItemCopyWithImpl<_$_DiaryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiaryItemToJson(
      this,
    );
  }
}

abstract class _DiaryItem implements DiaryItem {
  factory _DiaryItem({required final int id}) = _$_DiaryItem;

  factory _DiaryItem.fromJson(Map<String, dynamic> json) =
      _$_DiaryItem.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_DiaryItemCopyWith<_$_DiaryItem> get copyWith =>
      throw _privateConstructorUsedError;
}
