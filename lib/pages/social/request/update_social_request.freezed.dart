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
  String get postId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get contents => throw _privateConstructorUsedError;

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
  $Res call({String postId, String? title, String? contents});
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
    Object? postId = freezed,
    Object? title = freezed,
    Object? contents = freezed,
  }) {
    return _then(_value.copyWith(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
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
  $Res call({String postId, String? title, String? contents});
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
    Object? postId = freezed,
    Object? title = freezed,
    Object? contents = freezed,
  }) {
    return _then(_$_UpdateSocialRequest(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateSocialRequest implements _UpdateSocialRequest {
  _$_UpdateSocialRequest({required this.postId, this.title, this.contents});

  factory _$_UpdateSocialRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateSocialRequestFromJson(json);

  @override
  final String postId;
  @override
  final String? title;
  @override
  final String? contents;

  @override
  String toString() {
    return 'UpdateSocialRequest(postId: $postId, title: $title, contents: $contents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSocialRequest &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.contents, contents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(contents));

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
      {required final String postId,
      final String? title,
      final String? contents}) = _$_UpdateSocialRequest;

  factory _UpdateSocialRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateSocialRequest.fromJson;

  @override
  String get postId;
  @override
  String? get title;
  @override
  String? get contents;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateSocialRequestCopyWith<_$_UpdateSocialRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
