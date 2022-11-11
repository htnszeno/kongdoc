// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_social_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateSocialRequest _$UpdateSocialRequestFromJson(Map<String, dynamic> json) {
  return _UpdateSocialRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateSocialRequest {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateSocialRequestCopyWith<UpdateSocialRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSocialRequestCopyWith<$Res> {
  factory $UpdateSocialRequestCopyWith(
          UpdateSocialRequest value, $Res Function(UpdateSocialRequest) then) =
      _$UpdateSocialRequestCopyWithImpl<$Res>;
  $Res call({int id, int userId, String? title, String? body});
}

/// @nodoc
class _$UpdateSocialRequestCopyWithImpl<$Res>
    implements $UpdateSocialRequestCopyWith<$Res> {
  _$UpdateSocialRequestCopyWithImpl(this._value, this._then);

  final UpdateSocialRequest _value;
  // ignore: unused_field
  final $Res Function(UpdateSocialRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
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
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UpdateSocialRequestCopyWith<$Res>
    implements $UpdateSocialRequestCopyWith<$Res> {
  factory _$$_UpdateSocialRequestCopyWith(_$_UpdateSocialRequest value,
          $Res Function(_$_UpdateSocialRequest) then) =
      __$$_UpdateSocialRequestCopyWithImpl<$Res>;
  @override
  $Res call({int id, int userId, String? title, String? body});
}

/// @nodoc
class __$$_UpdateSocialRequestCopyWithImpl<$Res>
    extends _$UpdateSocialRequestCopyWithImpl<$Res>
    implements _$$_UpdateSocialRequestCopyWith<$Res> {
  __$$_UpdateSocialRequestCopyWithImpl(_$_UpdateSocialRequest _value,
      $Res Function(_$_UpdateSocialRequest) _then)
      : super(_value, (v) => _then(v as _$_UpdateSocialRequest));

  @override
  _$_UpdateSocialRequest get _value => super._value as _$_UpdateSocialRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_UpdateSocialRequest(
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
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateSocialRequest implements _UpdateSocialRequest {
  _$_UpdateSocialRequest(
      {required this.id, required this.userId, this.title, this.body});

  factory _$_UpdateSocialRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateSocialRequestFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String? title;
  @override
  final String? body;

  @override
  String toString() {
    return 'UpdateSocialRequest(id: $id, userId: $userId, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSocialRequest &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateSocialRequestCopyWith<_$_UpdateSocialRequest> get copyWith =>
      __$$_UpdateSocialRequestCopyWithImpl<_$_UpdateSocialRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateSocialRequestToJson(
      this,
    );
  }
}

abstract class _UpdateSocialRequest implements UpdateSocialRequest {
  factory _UpdateSocialRequest(
      {required final int id,
      required final int userId,
      final String? title,
      final String? body}) = _$_UpdateSocialRequest;

  factory _UpdateSocialRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateSocialRequest.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String? get title;
  @override
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateSocialRequestCopyWith<_$_UpdateSocialRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
