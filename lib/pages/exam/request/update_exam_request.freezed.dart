// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_exam_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateExamRequest _$UpdateExamRequestFromJson(Map<String, dynamic> json) {
  return _UpdateExamRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateExamRequest {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateExamRequestCopyWith<UpdateExamRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateExamRequestCopyWith<$Res> {
  factory $UpdateExamRequestCopyWith(
          UpdateExamRequest value, $Res Function(UpdateExamRequest) then) =
      _$UpdateExamRequestCopyWithImpl<$Res, UpdateExamRequest>;
  @useResult
  $Res call({int id, int userId, String? title, String? body});
}

/// @nodoc
class _$UpdateExamRequestCopyWithImpl<$Res, $Val extends UpdateExamRequest>
    implements $UpdateExamRequestCopyWith<$Res> {
  _$UpdateExamRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_UpdateExamRequestCopyWith<$Res>
    implements $UpdateExamRequestCopyWith<$Res> {
  factory _$$_UpdateExamRequestCopyWith(_$_UpdateExamRequest value,
          $Res Function(_$_UpdateExamRequest) then) =
      __$$_UpdateExamRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, String? title, String? body});
}

/// @nodoc
class __$$_UpdateExamRequestCopyWithImpl<$Res>
    extends _$UpdateExamRequestCopyWithImpl<$Res, _$_UpdateExamRequest>
    implements _$$_UpdateExamRequestCopyWith<$Res> {
  __$$_UpdateExamRequestCopyWithImpl(
      _$_UpdateExamRequest _value, $Res Function(_$_UpdateExamRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_UpdateExamRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_UpdateExamRequest implements _UpdateExamRequest {
  _$_UpdateExamRequest(
      {required this.id, required this.userId, this.title, this.body});

  factory _$_UpdateExamRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateExamRequestFromJson(json);

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
    return 'UpdateExamRequest(id: $id, userId: $userId, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateExamRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateExamRequestCopyWith<_$_UpdateExamRequest> get copyWith =>
      __$$_UpdateExamRequestCopyWithImpl<_$_UpdateExamRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateExamRequestToJson(
      this,
    );
  }
}

abstract class _UpdateExamRequest implements UpdateExamRequest {
  factory _UpdateExamRequest(
      {required final int id,
      required final int userId,
      final String? title,
      final String? body}) = _$_UpdateExamRequest;

  factory _UpdateExamRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateExamRequest.fromJson;

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
  _$$_UpdateExamRequestCopyWith<_$_UpdateExamRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
