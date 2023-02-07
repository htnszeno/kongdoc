// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_note_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateNoteRequest _$CreateNoteRequestFromJson(Map<String, dynamic> json) {
  return _CreateNoteRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateNoteRequest {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateNoteRequestCopyWith<CreateNoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNoteRequestCopyWith<$Res> {
  factory $CreateNoteRequestCopyWith(
          CreateNoteRequest value, $Res Function(CreateNoteRequest) then) =
      _$CreateNoteRequestCopyWithImpl<$Res, CreateNoteRequest>;
  @useResult
  $Res call({String title, String content, String color});
}

/// @nodoc
class _$CreateNoteRequestCopyWithImpl<$Res, $Val extends CreateNoteRequest>
    implements $CreateNoteRequestCopyWith<$Res> {
  _$CreateNoteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateNoteRequestCopyWith<$Res>
    implements $CreateNoteRequestCopyWith<$Res> {
  factory _$$_CreateNoteRequestCopyWith(_$_CreateNoteRequest value,
          $Res Function(_$_CreateNoteRequest) then) =
      __$$_CreateNoteRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content, String color});
}

/// @nodoc
class __$$_CreateNoteRequestCopyWithImpl<$Res>
    extends _$CreateNoteRequestCopyWithImpl<$Res, _$_CreateNoteRequest>
    implements _$$_CreateNoteRequestCopyWith<$Res> {
  __$$_CreateNoteRequestCopyWithImpl(
      _$_CreateNoteRequest _value, $Res Function(_$_CreateNoteRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? color = null,
  }) {
    return _then(_$_CreateNoteRequest(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateNoteRequest implements _CreateNoteRequest {
  _$_CreateNoteRequest(
      {required this.title, required this.content, required this.color});

  factory _$_CreateNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateNoteRequestFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final String color;

  @override
  String toString() {
    return 'CreateNoteRequest(title: $title, content: $content, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateNoteRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, content, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateNoteRequestCopyWith<_$_CreateNoteRequest> get copyWith =>
      __$$_CreateNoteRequestCopyWithImpl<_$_CreateNoteRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateNoteRequestToJson(
      this,
    );
  }
}

abstract class _CreateNoteRequest implements CreateNoteRequest {
  factory _CreateNoteRequest(
      {required final String title,
      required final String content,
      required final String color}) = _$_CreateNoteRequest;

  factory _CreateNoteRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateNoteRequest.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$_CreateNoteRequestCopyWith<_$_CreateNoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
