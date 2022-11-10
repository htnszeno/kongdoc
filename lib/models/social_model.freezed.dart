// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialItem _$SocialItemFromJson(Map<String, dynamic> json) {
  return _SocialItem.fromJson(json);
}

/// @nodoc
mixin _$SocialItem {
// @JsonKey(name: "user_id")
  String get userId =>
      throw _privateConstructorUsedError; // @JsonKey(name: "user_name_loc")
  String get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialItemCopyWith<SocialItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialItemCopyWith<$Res> {
  factory $SocialItemCopyWith(
          SocialItem value, $Res Function(SocialItem) then) =
      _$SocialItemCopyWithImpl<$Res>;
  $Res call({String userId, String userName});
}

/// @nodoc
class _$SocialItemCopyWithImpl<$Res> implements $SocialItemCopyWith<$Res> {
  _$SocialItemCopyWithImpl(this._value, this._then);

  final SocialItem _value;
  // ignore: unused_field
  final $Res Function(SocialItem) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SocialItemCopyWith<$Res>
    implements $SocialItemCopyWith<$Res> {
  factory _$$_SocialItemCopyWith(
          _$_SocialItem value, $Res Function(_$_SocialItem) then) =
      __$$_SocialItemCopyWithImpl<$Res>;
  @override
  $Res call({String userId, String userName});
}

/// @nodoc
class __$$_SocialItemCopyWithImpl<$Res> extends _$SocialItemCopyWithImpl<$Res>
    implements _$$_SocialItemCopyWith<$Res> {
  __$$_SocialItemCopyWithImpl(
      _$_SocialItem _value, $Res Function(_$_SocialItem) _then)
      : super(_value, (v) => _then(v as _$_SocialItem));

  @override
  _$_SocialItem get _value => super._value as _$_SocialItem;

  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
  }) {
    return _then(_$_SocialItem(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialItem implements _SocialItem {
  _$_SocialItem({required this.userId, required this.userName});

  factory _$_SocialItem.fromJson(Map<String, dynamic> json) =>
      _$$_SocialItemFromJson(json);

// @JsonKey(name: "user_id")
  @override
  final String userId;
// @JsonKey(name: "user_name_loc")
  @override
  final String userName;

  @override
  String toString() {
    return 'SocialItem(userId: $userId, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialItem &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$$_SocialItemCopyWith<_$_SocialItem> get copyWith =>
      __$$_SocialItemCopyWithImpl<_$_SocialItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialItemToJson(
      this,
    );
  }
}

abstract class _SocialItem implements SocialItem {
  factory _SocialItem(
      {required final String userId,
      required final String userName}) = _$_SocialItem;

  factory _SocialItem.fromJson(Map<String, dynamic> json) =
      _$_SocialItem.fromJson;

  @override // @JsonKey(name: "user_id")
  String get userId;
  @override // @JsonKey(name: "user_name_loc")
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$_SocialItemCopyWith<_$_SocialItem> get copyWith =>
      throw _privateConstructorUsedError;
}
