// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exam_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExamItem _$ExamItemFromJson(Map<String, dynamic> json) {
  return _ExamItem.fromJson(json);
}

/// @nodoc
mixin _$ExamItem {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExamItemCopyWith<ExamItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamItemCopyWith<$Res> {
  factory $ExamItemCopyWith(ExamItem value, $Res Function(ExamItem) then) =
      _$ExamItemCopyWithImpl<$Res>;
  $Res call({int id, int userId, String title, String body, String? color});
}

/// @nodoc
class _$ExamItemCopyWithImpl<$Res> implements $ExamItemCopyWith<$Res> {
  _$ExamItemCopyWithImpl(this._value, this._then);

  final ExamItem _value;
  // ignore: unused_field
  final $Res Function(ExamItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ExamItemCopyWith<$Res> implements $ExamItemCopyWith<$Res> {
  factory _$$_ExamItemCopyWith(
          _$_ExamItem value, $Res Function(_$_ExamItem) then) =
      __$$_ExamItemCopyWithImpl<$Res>;
  @override
  $Res call({int id, int userId, String title, String body, String? color});
}

/// @nodoc
class __$$_ExamItemCopyWithImpl<$Res> extends _$ExamItemCopyWithImpl<$Res>
    implements _$$_ExamItemCopyWith<$Res> {
  __$$_ExamItemCopyWithImpl(
      _$_ExamItem _value, $Res Function(_$_ExamItem) _then)
      : super(_value, (v) => _then(v as _$_ExamItem));

  @override
  _$_ExamItem get _value => super._value as _$_ExamItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_ExamItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExamItem implements _ExamItem {
  _$_ExamItem(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body,
      this.color = '#ff03a9f4'});

  factory _$_ExamItem.fromJson(Map<String, dynamic> json) =>
      _$$_ExamItemFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String title;
  @override
  final String body;
  @override
  @JsonKey()
  final String? color;

  @override
  String toString() {
    return 'ExamItem(id: $id, userId: $userId, title: $title, body: $body, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExamItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_ExamItemCopyWith<_$_ExamItem> get copyWith =>
      __$$_ExamItemCopyWithImpl<_$_ExamItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExamItemToJson(
      this,
    );
  }
}

abstract class _ExamItem implements ExamItem {
  factory _ExamItem(
      {required final int id,
      required final int userId,
      required final String title,
      required final String body,
      final String? color}) = _$_ExamItem;

  factory _ExamItem.fromJson(Map<String, dynamic> json) = _$_ExamItem.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get title;
  @override
  String get body;
  @override
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$_ExamItemCopyWith<_$_ExamItem> get copyWith =>
      throw _privateConstructorUsedError;
}
