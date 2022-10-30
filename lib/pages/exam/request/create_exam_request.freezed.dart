// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_exam_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateExamRequest _$CreateExamRequestFromJson(Map<String, dynamic> json) {
  return _CreateExamRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateExamRequest {
  int get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateExamRequestCopyWith<CreateExamRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateExamRequestCopyWith<$Res> {
  factory $CreateExamRequestCopyWith(
          CreateExamRequest value, $Res Function(CreateExamRequest) then) =
      _$CreateExamRequestCopyWithImpl<$Res>;
  $Res call({int userId, String? title, String? body});
}

/// @nodoc
class _$CreateExamRequestCopyWithImpl<$Res>
    implements $CreateExamRequestCopyWith<$Res> {
  _$CreateExamRequestCopyWithImpl(this._value, this._then);

  final CreateExamRequest _value;
  // ignore: unused_field
  final $Res Function(CreateExamRequest) _then;

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
abstract class _$$_CreateExamRequestCopyWith<$Res>
    implements $CreateExamRequestCopyWith<$Res> {
  factory _$$_CreateExamRequestCopyWith(_$_CreateExamRequest value,
          $Res Function(_$_CreateExamRequest) then) =
      __$$_CreateExamRequestCopyWithImpl<$Res>;
  @override
  $Res call({int userId, String? title, String? body});
}

/// @nodoc
class __$$_CreateExamRequestCopyWithImpl<$Res>
    extends _$CreateExamRequestCopyWithImpl<$Res>
    implements _$$_CreateExamRequestCopyWith<$Res> {
  __$$_CreateExamRequestCopyWithImpl(
      _$_CreateExamRequest _value, $Res Function(_$_CreateExamRequest) _then)
      : super(_value, (v) => _then(v as _$_CreateExamRequest));

  @override
  _$_CreateExamRequest get _value => super._value as _$_CreateExamRequest;

  @override
  $Res call({
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_CreateExamRequest(
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
class _$_CreateExamRequest implements _CreateExamRequest {
  _$_CreateExamRequest({required this.userId, this.title, this.body});

  factory _$_CreateExamRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateExamRequestFromJson(json);

  @override
  final int userId;
  @override
  final String? title;
  @override
  final String? body;

  @override
  String toString() {
    return 'CreateExamRequest(userId: $userId, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateExamRequest &&
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
  _$$_CreateExamRequestCopyWith<_$_CreateExamRequest> get copyWith =>
      __$$_CreateExamRequestCopyWithImpl<_$_CreateExamRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateExamRequestToJson(
      this,
    );
  }
}

abstract class _CreateExamRequest implements CreateExamRequest {
  factory _CreateExamRequest(
      {required final int userId,
      final String? title,
      final String? body}) = _$_CreateExamRequest;

  factory _CreateExamRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateExamRequest.fromJson;

  @override
  int get userId;
  @override
  String? get title;
  @override
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$_CreateExamRequestCopyWith<_$_CreateExamRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
