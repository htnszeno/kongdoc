// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_login_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginTokenRequest _$LoginTokenRequestFromJson(Map<String, dynamic> json) {
  return _LoginTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginTokenRequest {
  String get USER_ID => throw _privateConstructorUsedError;
  String get PW => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginTokenRequestCopyWith<LoginTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginTokenRequestCopyWith<$Res> {
  factory $LoginTokenRequestCopyWith(
          LoginTokenRequest value, $Res Function(LoginTokenRequest) then) =
      _$LoginTokenRequestCopyWithImpl<$Res, LoginTokenRequest>;
  @useResult
  $Res call({String USER_ID, String PW});
}

/// @nodoc
class _$LoginTokenRequestCopyWithImpl<$Res, $Val extends LoginTokenRequest>
    implements $LoginTokenRequestCopyWith<$Res> {
  _$LoginTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? USER_ID = null,
    Object? PW = null,
  }) {
    return _then(_value.copyWith(
      USER_ID: null == USER_ID
          ? _value.USER_ID
          : USER_ID // ignore: cast_nullable_to_non_nullable
              as String,
      PW: null == PW
          ? _value.PW
          : PW // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginTokenRequestCopyWith<$Res>
    implements $LoginTokenRequestCopyWith<$Res> {
  factory _$$_LoginTokenRequestCopyWith(_$_LoginTokenRequest value,
          $Res Function(_$_LoginTokenRequest) then) =
      __$$_LoginTokenRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String USER_ID, String PW});
}

/// @nodoc
class __$$_LoginTokenRequestCopyWithImpl<$Res>
    extends _$LoginTokenRequestCopyWithImpl<$Res, _$_LoginTokenRequest>
    implements _$$_LoginTokenRequestCopyWith<$Res> {
  __$$_LoginTokenRequestCopyWithImpl(
      _$_LoginTokenRequest _value, $Res Function(_$_LoginTokenRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? USER_ID = null,
    Object? PW = null,
  }) {
    return _then(_$_LoginTokenRequest(
      USER_ID: null == USER_ID
          ? _value.USER_ID
          : USER_ID // ignore: cast_nullable_to_non_nullable
              as String,
      PW: null == PW
          ? _value.PW
          : PW // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginTokenRequest implements _LoginTokenRequest {
  _$_LoginTokenRequest({required this.USER_ID, required this.PW});

  factory _$_LoginTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$$_LoginTokenRequestFromJson(json);

  @override
  final String USER_ID;
  @override
  final String PW;

  @override
  String toString() {
    return 'LoginTokenRequest(USER_ID: $USER_ID, PW: $PW)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginTokenRequest &&
            (identical(other.USER_ID, USER_ID) || other.USER_ID == USER_ID) &&
            (identical(other.PW, PW) || other.PW == PW));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, USER_ID, PW);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginTokenRequestCopyWith<_$_LoginTokenRequest> get copyWith =>
      __$$_LoginTokenRequestCopyWithImpl<_$_LoginTokenRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginTokenRequestToJson(
      this,
    );
  }
}

abstract class _LoginTokenRequest implements LoginTokenRequest {
  factory _LoginTokenRequest(
      {required final String USER_ID,
      required final String PW}) = _$_LoginTokenRequest;

  factory _LoginTokenRequest.fromJson(Map<String, dynamic> json) =
      _$_LoginTokenRequest.fromJson;

  @override
  String get USER_ID;
  @override
  String get PW;
  @override
  @JsonKey(ignore: true)
  _$$_LoginTokenRequestCopyWith<_$_LoginTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
