// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteHomeEvent {
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
abstract class $NoteHomeEventCopyWith<$Res> {
  factory $NoteHomeEventCopyWith(
          NoteHomeEvent value, $Res Function(NoteHomeEvent) then) =
      _$NoteHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteHomeEventCopyWithImpl<$Res>
    implements $NoteHomeEventCopyWith<$Res> {
  _$NoteHomeEventCopyWithImpl(this._value, this._then);

  final NoteHomeEvent _value;
  // ignore: unused_field
  final $Res Function(NoteHomeEvent) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res> extends _$NoteHomeEventCopyWithImpl<$Res>
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
    return 'NoteHomeEvent.started()';
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

abstract class Started implements NoteHomeEvent {
  const factory Started() = _$Started;
}

/// @nodoc
mixin _$NoteHomeState {
  NoteViewType get viewType => throw _privateConstructorUsedError;
  List<NoteItem> get notes => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteHomeStateCopyWith<NoteHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteHomeStateCopyWith<$Res> {
  factory $NoteHomeStateCopyWith(
          NoteHomeState value, $Res Function(NoteHomeState) then) =
      _$NoteHomeStateCopyWithImpl<$Res>;
  $Res call(
      {NoteViewType viewType,
      List<NoteItem> notes,
      int page,
      bool isLastPage,
      DataStatus status,
      String message});
}

/// @nodoc
class _$NoteHomeStateCopyWithImpl<$Res>
    implements $NoteHomeStateCopyWith<$Res> {
  _$NoteHomeStateCopyWithImpl(this._value, this._then);

  final NoteHomeState _value;
  // ignore: unused_field
  final $Res Function(NoteHomeState) _then;

  @override
  $Res call({
    Object? viewType = freezed,
    Object? notes = freezed,
    Object? page = freezed,
    Object? isLastPage = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      viewType: viewType == freezed
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as NoteViewType,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteItem>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NoteHomeStateCopyWith<$Res>
    implements $NoteHomeStateCopyWith<$Res> {
  factory _$$_NoteHomeStateCopyWith(
          _$_NoteHomeState value, $Res Function(_$_NoteHomeState) then) =
      __$$_NoteHomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {NoteViewType viewType,
      List<NoteItem> notes,
      int page,
      bool isLastPage,
      DataStatus status,
      String message});
}

/// @nodoc
class __$$_NoteHomeStateCopyWithImpl<$Res>
    extends _$NoteHomeStateCopyWithImpl<$Res>
    implements _$$_NoteHomeStateCopyWith<$Res> {
  __$$_NoteHomeStateCopyWithImpl(
      _$_NoteHomeState _value, $Res Function(_$_NoteHomeState) _then)
      : super(_value, (v) => _then(v as _$_NoteHomeState));

  @override
  _$_NoteHomeState get _value => super._value as _$_NoteHomeState;

  @override
  $Res call({
    Object? viewType = freezed,
    Object? notes = freezed,
    Object? page = freezed,
    Object? isLastPage = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_NoteHomeState(
      viewType: viewType == freezed
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as NoteViewType,
      notes: notes == freezed
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteItem>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoteHomeState extends _NoteHomeState {
  const _$_NoteHomeState(
      {required this.viewType,
      required final List<NoteItem> notes,
      required this.page,
      required this.isLastPage,
      required this.status,
      required this.message})
      : _notes = notes,
        super._();

  @override
  final NoteViewType viewType;
  final List<NoteItem> _notes;
  @override
  List<NoteItem> get notes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  final int page;
  @override
  final bool isLastPage;
  @override
  final DataStatus status;
  @override
  final String message;

  @override
  String toString() {
    return 'NoteHomeState(viewType: $viewType, notes: $notes, page: $page, isLastPage: $isLastPage, status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteHomeState &&
            const DeepCollectionEquality().equals(other.viewType, viewType) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.isLastPage, isLastPage) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(viewType),
      const DeepCollectionEquality().hash(_notes),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(isLastPage),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_NoteHomeStateCopyWith<_$_NoteHomeState> get copyWith =>
      __$$_NoteHomeStateCopyWithImpl<_$_NoteHomeState>(this, _$identity);
}

abstract class _NoteHomeState extends NoteHomeState {
  const factory _NoteHomeState(
      {required final NoteViewType viewType,
      required final List<NoteItem> notes,
      required final int page,
      required final bool isLastPage,
      required final DataStatus status,
      required final String message}) = _$_NoteHomeState;
  const _NoteHomeState._() : super._();

  @override
  NoteViewType get viewType;
  @override
  List<NoteItem> get notes;
  @override
  int get page;
  @override
  bool get isLastPage;
  @override
  DataStatus get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_NoteHomeStateCopyWith<_$_NoteHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
