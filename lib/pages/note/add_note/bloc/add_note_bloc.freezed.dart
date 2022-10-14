// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddNoteEvent {
  NoteItem? get note => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteItem? note) setSelectedNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NoteItem? note)? setSelectedNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteItem? note)? setSelectedNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetSelectedNote value) setSelectedNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetSelectedNote value)? setSelectedNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetSelectedNote value)? setSelectedNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNoteEventCopyWith<AddNoteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNoteEventCopyWith<$Res> {
  factory $AddNoteEventCopyWith(
          AddNoteEvent value, $Res Function(AddNoteEvent) then) =
      _$AddNoteEventCopyWithImpl<$Res>;
  $Res call({NoteItem? note});

  $NoteItemCopyWith<$Res>? get note;
}

/// @nodoc
class _$AddNoteEventCopyWithImpl<$Res> implements $AddNoteEventCopyWith<$Res> {
  _$AddNoteEventCopyWithImpl(this._value, this._then);

  final AddNoteEvent _value;
  // ignore: unused_field
  final $Res Function(AddNoteEvent) _then;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteItem?,
    ));
  }

  @override
  $NoteItemCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NoteItemCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
abstract class _$$SetSelectedNoteCopyWith<$Res>
    implements $AddNoteEventCopyWith<$Res> {
  factory _$$SetSelectedNoteCopyWith(
          _$SetSelectedNote value, $Res Function(_$SetSelectedNote) then) =
      __$$SetSelectedNoteCopyWithImpl<$Res>;
  @override
  $Res call({NoteItem? note});

  @override
  $NoteItemCopyWith<$Res>? get note;
}

/// @nodoc
class __$$SetSelectedNoteCopyWithImpl<$Res>
    extends _$AddNoteEventCopyWithImpl<$Res>
    implements _$$SetSelectedNoteCopyWith<$Res> {
  __$$SetSelectedNoteCopyWithImpl(
      _$SetSelectedNote _value, $Res Function(_$SetSelectedNote) _then)
      : super(_value, (v) => _then(v as _$SetSelectedNote));

  @override
  _$SetSelectedNote get _value => super._value as _$SetSelectedNote;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_$SetSelectedNote(
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteItem?,
    ));
  }
}

/// @nodoc

class _$SetSelectedNote implements SetSelectedNote {
  const _$SetSelectedNote(this.note);

  @override
  final NoteItem? note;

  @override
  String toString() {
    return 'AddNoteEvent.setSelectedNote(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedNote &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$$SetSelectedNoteCopyWith<_$SetSelectedNote> get copyWith =>
      __$$SetSelectedNoteCopyWithImpl<_$SetSelectedNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteItem? note) setSelectedNote,
  }) {
    return setSelectedNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NoteItem? note)? setSelectedNote,
  }) {
    return setSelectedNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteItem? note)? setSelectedNote,
    required TResult orElse(),
  }) {
    if (setSelectedNote != null) {
      return setSelectedNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetSelectedNote value) setSelectedNote,
  }) {
    return setSelectedNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetSelectedNote value)? setSelectedNote,
  }) {
    return setSelectedNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetSelectedNote value)? setSelectedNote,
    required TResult orElse(),
  }) {
    if (setSelectedNote != null) {
      return setSelectedNote(this);
    }
    return orElse();
  }
}

abstract class SetSelectedNote implements AddNoteEvent {
  const factory SetSelectedNote(final NoteItem? note) = _$SetSelectedNote;

  @override
  NoteItem? get note;
  @override
  @JsonKey(ignore: true)
  _$$SetSelectedNoteCopyWith<_$SetSelectedNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddNoteState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  NoteItem? get note => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNoteStateCopyWith<AddNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNoteStateCopyWith<$Res> {
  factory $AddNoteStateCopyWith(
          AddNoteState value, $Res Function(AddNoteState) then) =
      _$AddNoteStateCopyWithImpl<$Res>;
  $Res call({DataStatus status, String message, NoteItem? note});

  $NoteItemCopyWith<$Res>? get note;
}

/// @nodoc
class _$AddNoteStateCopyWithImpl<$Res> implements $AddNoteStateCopyWith<$Res> {
  _$AddNoteStateCopyWithImpl(this._value, this._then);

  final AddNoteState _value;
  // ignore: unused_field
  final $Res Function(AddNoteState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteItem?,
    ));
  }

  @override
  $NoteItemCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NoteItemCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
abstract class _$$_AddNoteStateCopyWith<$Res>
    implements $AddNoteStateCopyWith<$Res> {
  factory _$$_AddNoteStateCopyWith(
          _$_AddNoteState value, $Res Function(_$_AddNoteState) then) =
      __$$_AddNoteStateCopyWithImpl<$Res>;
  @override
  $Res call({DataStatus status, String message, NoteItem? note});

  @override
  $NoteItemCopyWith<$Res>? get note;
}

/// @nodoc
class __$$_AddNoteStateCopyWithImpl<$Res>
    extends _$AddNoteStateCopyWithImpl<$Res>
    implements _$$_AddNoteStateCopyWith<$Res> {
  __$$_AddNoteStateCopyWithImpl(
      _$_AddNoteState _value, $Res Function(_$_AddNoteState) _then)
      : super(_value, (v) => _then(v as _$_AddNoteState));

  @override
  _$_AddNoteState get _value => super._value as _$_AddNoteState;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? note = freezed,
  }) {
    return _then(_$_AddNoteState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteItem?,
    ));
  }
}

/// @nodoc

class _$_AddNoteState extends _AddNoteState {
  _$_AddNoteState({required this.status, required this.message, this.note})
      : super._();

  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final NoteItem? note;

  @override
  String toString() {
    return 'AddNoteState(status: $status, message: $message, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNoteState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$$_AddNoteStateCopyWith<_$_AddNoteState> get copyWith =>
      __$$_AddNoteStateCopyWithImpl<_$_AddNoteState>(this, _$identity);
}

abstract class _AddNoteState extends AddNoteState {
  factory _AddNoteState(
      {required final DataStatus status,
      required final String message,
      final NoteItem? note}) = _$_AddNoteState;
  _AddNoteState._() : super._();

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  NoteItem? get note;
  @override
  @JsonKey(ignore: true)
  _$$_AddNoteStateCopyWith<_$_AddNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}
