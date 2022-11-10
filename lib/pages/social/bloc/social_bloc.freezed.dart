// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SocialEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialEventCopyWith<$Res> {
  factory $SocialEventCopyWith(
          SocialEvent value, $Res Function(SocialEvent) then) =
      _$SocialEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SocialEventCopyWithImpl<$Res> implements $SocialEventCopyWith<$Res> {
  _$SocialEventCopyWithImpl(this._value, this._then);

  final SocialEvent _value;
  // ignore: unused_field
  final $Res Function(SocialEvent) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res> extends _$SocialEventCopyWithImpl<$Res>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, (v) => _then(v as _$Started));

  @override
  _$Started get _value => super._value as _$Started;
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'SocialEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements SocialEvent {
  const factory Started() = _$Started;
}

/// @nodoc
mixin _$SocialState {
  int get page => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocialStateCopyWith<SocialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialStateCopyWith<$Res> {
  factory $SocialStateCopyWith(
          SocialState value, $Res Function(SocialState) then) =
      _$SocialStateCopyWithImpl<$Res>;
  $Res call({int page, DataStatus status, bool isLastPage, String message});
}

/// @nodoc
class _$SocialStateCopyWithImpl<$Res> implements $SocialStateCopyWith<$Res> {
  _$SocialStateCopyWithImpl(this._value, this._then);

  final SocialState _value;
  // ignore: unused_field
  final $Res Function(SocialState) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? status = freezed,
    Object? isLastPage = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SocialStateCopyWith<$Res>
    implements $SocialStateCopyWith<$Res> {
  factory _$$_SocialStateCopyWith(
          _$_SocialState value, $Res Function(_$_SocialState) then) =
      __$$_SocialStateCopyWithImpl<$Res>;
  @override
  $Res call({int page, DataStatus status, bool isLastPage, String message});
}

/// @nodoc
class __$$_SocialStateCopyWithImpl<$Res> extends _$SocialStateCopyWithImpl<$Res>
    implements _$$_SocialStateCopyWith<$Res> {
  __$$_SocialStateCopyWithImpl(
      _$_SocialState _value, $Res Function(_$_SocialState) _then)
      : super(_value, (v) => _then(v as _$_SocialState));

  @override
  _$_SocialState get _value => super._value as _$_SocialState;

  @override
  $Res call({
    Object? page = freezed,
    Object? status = freezed,
    Object? isLastPage = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_SocialState(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SocialState extends _SocialState {
  const _$_SocialState(
      {required this.page,
      required this.status,
      required this.isLastPage,
      required this.message})
      : super._();

  @override
  final int page;
  @override
  final DataStatus status;
  @override
  final bool isLastPage;
  @override
  final String message;

  @override
  String toString() {
    return 'SocialState(page: $page, status: $status, isLastPage: $isLastPage, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialState &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.isLastPage, isLastPage) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(isLastPage),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_SocialStateCopyWith<_$_SocialState> get copyWith =>
      __$$_SocialStateCopyWithImpl<_$_SocialState>(this, _$identity);
}

abstract class _SocialState extends SocialState {
  const factory _SocialState(
      {required final int page,
      required final DataStatus status,
      required final bool isLastPage,
      required final String message}) = _$_SocialState;
  const _SocialState._() : super._();

  @override
  int get page;
  @override
  DataStatus get status;
  @override
  bool get isLastPage;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SocialStateCopyWith<_$_SocialState> get copyWith =>
      throw _privateConstructorUsedError;
}
