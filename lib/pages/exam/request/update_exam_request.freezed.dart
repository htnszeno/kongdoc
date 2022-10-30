// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$UpdateExamRequestCopyWithImpl<$Res>;
  $Res call({int id, int userId, String? title, String? body});
}

/// @nodoc
class _$UpdateExamRequestCopyWithImpl<$Res>
    implements $UpdateExamRequestCopyWith<$Res> {
  _$UpdateExamRequestCopyWithImpl(this._value, this._then);

  final UpdateExamRequest _value;
  // ignore: unused_field
  final $Res Function(UpdateExamRequest) _then;

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
abstract class _$$_UpdateExamRequestCopyWith<$Res>
    implements $UpdateExamRequestCopyWith<$Res> {
  factory _$$_UpdateExamRequestCopyWith(_$_UpdateExamRequest value,
          $Res Function(_$_UpdateExamRequest) then) =
      __$$_UpdateExamRequestCopyWithImpl<$Res>;
  @override
  $Res call({int id, int userId, String? title, String? body});
}

/// @nodoc
class __$$_UpdateExamRequestCopyWithImpl<$Res>
    extends _$UpdateExamRequestCopyWithImpl<$Res>
    implements _$$_UpdateExamRequestCopyWith<$Res> {
  __$$_UpdateExamRequestCopyWithImpl(
      _$_UpdateExamRequest _value, $Res Function(_$_UpdateExamRequest) _then)
      : super(_value, (v) => _then(v as _$_UpdateExamRequest));

  @override
  _$_UpdateExamRequest get _value => super._value as _$_UpdateExamRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_UpdateExamRequest(
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
