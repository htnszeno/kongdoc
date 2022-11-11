// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_social_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateSocialRequest _$CreateSocialRequestFromJson(Map<String, dynamic> json) {
  return _CreateSocialRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateSocialRequest {
  int get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSocialRequestCopyWith<CreateSocialRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSocialRequestCopyWith<$Res> {
  factory $CreateSocialRequestCopyWith(
          CreateSocialRequest value, $Res Function(CreateSocialRequest) then) =
      _$CreateSocialRequestCopyWithImpl<$Res>;
  $Res call({int userId, String? title, String? body});
}

/// @nodoc
class _$CreateSocialRequestCopyWithImpl<$Res>
    implements $CreateSocialRequestCopyWith<$Res> {
  _$CreateSocialRequestCopyWithImpl(this._value, this._then);

  final CreateSocialRequest _value;
  // ignore: unused_field
  final $Res Function(CreateSocialRequest) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_CreateSocialRequestCopyWith<$Res>
    implements $CreateSocialRequestCopyWith<$Res> {
  factory _$$_CreateSocialRequestCopyWith(_$_CreateSocialRequest value,
          $Res Function(_$_CreateSocialRequest) then) =
      __$$_CreateSocialRequestCopyWithImpl<$Res>;
  @override
  $Res call({int userId, String? title, String? body});
}

/// @nodoc
class __$$_CreateSocialRequestCopyWithImpl<$Res>
    extends _$CreateSocialRequestCopyWithImpl<$Res>
    implements _$$_CreateSocialRequestCopyWith<$Res> {
  __$$_CreateSocialRequestCopyWithImpl(_$_CreateSocialRequest _value,
      $Res Function(_$_CreateSocialRequest) _then)
      : super(_value, (v) => _then(v as _$_CreateSocialRequest));

  @override
  _$_CreateSocialRequest get _value => super._value as _$_CreateSocialRequest;

  @override
  $Res call({
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_CreateSocialRequest(
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
class _$_CreateSocialRequest implements _CreateSocialRequest {
  _$_CreateSocialRequest({required this.userId, this.title, this.body});

  factory _$_CreateSocialRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateSocialRequestFromJson(json);

  @override
  final int userId;
  @override
  final String? title;
  @override
  final String? body;

  @override
  String toString() {
    return 'CreateSocialRequest(userId: $userId, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateSocialRequest &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_CreateSocialRequestCopyWith<_$_CreateSocialRequest> get copyWith =>
      __$$_CreateSocialRequestCopyWithImpl<_$_CreateSocialRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateSocialRequestToJson(
      this,
    );
  }
}

abstract class _CreateSocialRequest implements CreateSocialRequest {
  factory _CreateSocialRequest(
      {required final int userId,
      final String? title,
      final String? body}) = _$_CreateSocialRequest;

  factory _CreateSocialRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateSocialRequest.fromJson;

  @override
  int get userId;
  @override
  String? get title;
  @override
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$_CreateSocialRequestCopyWith<_$_CreateSocialRequest> get copyWith =>
      throw _privateConstructorUsedError;
}