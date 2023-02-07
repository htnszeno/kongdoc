// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$CreateExamRequestCopyWithImpl<$Res, CreateExamRequest>;
  @useResult
  $Res call({int userId, String? title, String? body});
}

/// @nodoc
class _$CreateExamRequestCopyWithImpl<$Res, $Val extends CreateExamRequest>
    implements $CreateExamRequestCopyWith<$Res> {
  _$CreateExamRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateExamRequestCopyWith<$Res>
    implements $CreateExamRequestCopyWith<$Res> {
  factory _$$_CreateExamRequestCopyWith(_$_CreateExamRequest value,
          $Res Function(_$_CreateExamRequest) then) =
      __$$_CreateExamRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String? title, String? body});
}

/// @nodoc
class __$$_CreateExamRequestCopyWithImpl<$Res>
    extends _$CreateExamRequestCopyWithImpl<$Res, _$_CreateExamRequest>
    implements _$$_CreateExamRequestCopyWith<$Res> {
  __$$_CreateExamRequestCopyWithImpl(
      _$_CreateExamRequest _value, $Res Function(_$_CreateExamRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_CreateExamRequest(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
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
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
