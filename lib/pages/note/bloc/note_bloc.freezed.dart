// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function() toggleViewType,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(NoteItem? note) setSelectedNote,
    required TResult Function(LoginTokenRequest request) token,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FilterNote value) filterNotes,
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(SetSelectedNote value) setSelectedNote,
    required TResult Function(Token value) token,
    required TResult Function(Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteEventCopyWith<$Res> {
  factory $NoteEventCopyWith(NoteEvent value, $Res Function(NoteEvent) then) =
      _$NoteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteEventCopyWithImpl<$Res> implements $NoteEventCopyWith<$Res> {
  _$NoteEventCopyWithImpl(this._value, this._then);

  final NoteEvent _value;
  // ignore: unused_field
  final $Res Function(NoteEvent) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res> extends _$NoteEventCopyWithImpl<$Res>
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
    return 'NoteEvent.started()';
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
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function() toggleViewType,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(NoteItem? note) setSelectedNote,
    required TResult Function(LoginTokenRequest request) token,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
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
    required TResult Function(FilterNote value) filterNotes,
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(SetSelectedNote value) setSelectedNote,
    required TResult Function(Token value) token,
    required TResult Function(Logout value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements NoteEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$FilterNoteCopyWith<$Res> {
  factory _$$FilterNoteCopyWith(
          _$FilterNote value, $Res Function(_$FilterNote) then) =
      __$$FilterNoteCopyWithImpl<$Res>;
  $Res call({FilterDataType type, dynamic data});
}

/// @nodoc
class __$$FilterNoteCopyWithImpl<$Res> extends _$NoteEventCopyWithImpl<$Res>
    implements _$$FilterNoteCopyWith<$Res> {
  __$$FilterNoteCopyWithImpl(
      _$FilterNote _value, $Res Function(_$FilterNote) _then)
      : super(_value, (v) => _then(v as _$FilterNote));

  @override
  _$FilterNote get _value => super._value as _$FilterNote;

  @override
  $Res call({
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FilterNote(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FilterDataType,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$FilterNote implements FilterNote {
  const _$FilterNote(this.type, this.data);

  @override
  final FilterDataType type;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'NoteEvent.filterNotes(type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterNote &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$FilterNoteCopyWith<_$FilterNote> get copyWith =>
      __$$FilterNoteCopyWithImpl<_$FilterNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function() toggleViewType,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(NoteItem? note) setSelectedNote,
    required TResult Function(LoginTokenRequest request) token,
    required TResult Function() logout,
  }) {
    return filterNotes(type, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
  }) {
    return filterNotes?.call(type, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (filterNotes != null) {
      return filterNotes(type, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FilterNote value) filterNotes,
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(SetSelectedNote value) setSelectedNote,
    required TResult Function(Token value) token,
    required TResult Function(Logout value) logout,
  }) {
    return filterNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
  }) {
    return filterNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (filterNotes != null) {
      return filterNotes(this);
    }
    return orElse();
  }
}

abstract class FilterNote implements NoteEvent {
  const factory FilterNote(final FilterDataType type, final dynamic data) =
      _$FilterNote;

  FilterDataType get type;
  dynamic get data;
  @JsonKey(ignore: true)
  _$$FilterNoteCopyWith<_$FilterNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleViewTypeCopyWith<$Res> {
  factory _$$ToggleViewTypeCopyWith(
          _$ToggleViewType value, $Res Function(_$ToggleViewType) then) =
      __$$ToggleViewTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleViewTypeCopyWithImpl<$Res> extends _$NoteEventCopyWithImpl<$Res>
    implements _$$ToggleViewTypeCopyWith<$Res> {
  __$$ToggleViewTypeCopyWithImpl(
      _$ToggleViewType _value, $Res Function(_$ToggleViewType) _then)
      : super(_value, (v) => _then(v as _$ToggleViewType));

  @override
  _$ToggleViewType get _value => super._value as _$ToggleViewType;
}

/// @nodoc

class _$ToggleViewType implements ToggleViewType {
  const _$ToggleViewType();

  @override
  String toString() {
    return 'NoteEvent.toggleViewType()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleViewType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function() toggleViewType,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(NoteItem? note) setSelectedNote,
    required TResult Function(LoginTokenRequest request) token,
    required TResult Function() logout,
  }) {
    return toggleViewType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
  }) {
    return toggleViewType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (toggleViewType != null) {
      return toggleViewType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FilterNote value) filterNotes,
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(SetSelectedNote value) setSelectedNote,
    required TResult Function(Token value) token,
    required TResult Function(Logout value) logout,
  }) {
    return toggleViewType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
  }) {
    return toggleViewType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (toggleViewType != null) {
      return toggleViewType(this);
    }
    return orElse();
  }
}

abstract class ToggleViewType implements NoteEvent {
  const factory ToggleViewType() = _$ToggleViewType;
}

/// @nodoc
abstract class _$$RefreshCopyWith<$Res> {
  factory _$$RefreshCopyWith(_$Refresh value, $Res Function(_$Refresh) then) =
      __$$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<$Res> extends _$NoteEventCopyWithImpl<$Res>
    implements _$$RefreshCopyWith<$Res> {
  __$$RefreshCopyWithImpl(_$Refresh _value, $Res Function(_$Refresh) _then)
      : super(_value, (v) => _then(v as _$Refresh));

  @override
  _$Refresh get _value => super._value as _$Refresh;
}

/// @nodoc

class _$Refresh implements Refresh {
  const _$Refresh();

  @override
  String toString() {
    return 'NoteEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function() toggleViewType,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(NoteItem? note) setSelectedNote,
    required TResult Function(LoginTokenRequest request) token,
    required TResult Function() logout,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FilterNote value) filterNotes,
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(SetSelectedNote value) setSelectedNote,
    required TResult Function(Token value) token,
    required TResult Function(Logout value) logout,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements NoteEvent {
  const factory Refresh() = _$Refresh;
}

/// @nodoc
abstract class _$$LoadMoreCopyWith<$Res> {
  factory _$$LoadMoreCopyWith(
          _$LoadMore value, $Res Function(_$LoadMore) then) =
      __$$LoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreCopyWithImpl<$Res> extends _$NoteEventCopyWithImpl<$Res>
    implements _$$LoadMoreCopyWith<$Res> {
  __$$LoadMoreCopyWithImpl(_$LoadMore _value, $Res Function(_$LoadMore) _then)
      : super(_value, (v) => _then(v as _$LoadMore));

  @override
  _$LoadMore get _value => super._value as _$LoadMore;
}

/// @nodoc

class _$LoadMore implements LoadMore {
  const _$LoadMore();

  @override
  String toString() {
    return 'NoteEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function() toggleViewType,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(NoteItem? note) setSelectedNote,
    required TResult Function(LoginTokenRequest request) token,
    required TResult Function() logout,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FilterNote value) filterNotes,
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(SetSelectedNote value) setSelectedNote,
    required TResult Function(Token value) token,
    required TResult Function(Logout value) logout,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMore implements NoteEvent {
  const factory LoadMore() = _$LoadMore;
}

/// @nodoc
abstract class _$$DeleteCopyWith<$Res> {
  factory _$$DeleteCopyWith(_$Delete value, $Res Function(_$Delete) then) =
      __$$DeleteCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$DeleteCopyWithImpl<$Res> extends _$NoteEventCopyWithImpl<$Res>
    implements _$$DeleteCopyWith<$Res> {
  __$$DeleteCopyWithImpl(_$Delete _value, $Res Function(_$Delete) _then)
      : super(_value, (v) => _then(v as _$Delete));

  @override
  _$Delete get _value => super._value as _$Delete;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$Delete(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Delete implements Delete {
  const _$Delete(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'NoteEvent.delete(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Delete &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      __$$DeleteCopyWithImpl<_$Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function() toggleViewType,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(NoteItem? note) setSelectedNote,
    required TResult Function(LoginTokenRequest request) token,
    required TResult Function() logout,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FilterNote value) filterNotes,
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(SetSelectedNote value) setSelectedNote,
    required TResult Function(Token value) token,
    required TResult Function(Logout value) logout,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements NoteEvent {
  const factory Delete(final int id) = _$Delete;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCopyWith<$Res> {
  factory _$$CreateCopyWith(_$Create value, $Res Function(_$Create) then) =
      __$$CreateCopyWithImpl<$Res>;
  $Res call({CreateNoteRequest request});

  $CreateNoteRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$CreateCopyWithImpl<$Res> extends _$NoteEventCopyWithImpl<$Res>
    implements _$$CreateCopyWith<$Res> {
  __$$CreateCopyWithImpl(_$Create _value, $Res Function(_$Create) _then)
      : super(_value, (v) => _then(v as _$Create));

  @override
  _$Create get _value => super._value as _$Create;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_$Create(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateNoteRequest,
    ));
  }

  @override
  $CreateNoteRequestCopyWith<$Res> get request {
    return $CreateNoteRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$Create implements Create {
  const _$Create(this.request);

  @override
  final CreateNoteRequest request;

  @override
  String toString() {
    return 'NoteEvent.create(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Create &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  _$$CreateCopyWith<_$Create> get copyWith =>
      __$$CreateCopyWithImpl<_$Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function() toggleViewType,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(NoteItem? note) setSelectedNote,
    required TResult Function(LoginTokenRequest request) token,
    required TResult Function() logout,
  }) {
    return create(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
  }) {
    return create?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FilterNote value) filterNotes,
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(SetSelectedNote value) setSelectedNote,
    required TResult Function(Token value) token,
    required TResult Function(Logout value) logout,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class Create implements NoteEvent {
  const factory Create(final CreateNoteRequest request) = _$Create;

  CreateNoteRequest get request;
  @JsonKey(ignore: true)
  _$$CreateCopyWith<_$Create> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCopyWith<$Res> {
  factory _$$UpdateCopyWith(_$Update value, $Res Function(_$Update) then) =
      __$$UpdateCopyWithImpl<$Res>;
  $Res call({UpdateNoteRequest request, int id});

  $UpdateNoteRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$UpdateCopyWithImpl<$Res> extends _$NoteEventCopyWithImpl<$Res>
    implements _$$UpdateCopyWith<$Res> {
  __$$UpdateCopyWithImpl(_$Update _value, $Res Function(_$Update) _then)
      : super(_value, (v) => _then(v as _$Update));

  @override
  _$Update get _value => super._value as _$Update;

  @override
  $Res call({
    Object? request = freezed,
    Object? id = freezed,
  }) {
    return _then(_$Update(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UpdateNoteRequest,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UpdateNoteRequestCopyWith<$Res> get request {
    return $UpdateNoteRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$Update implements Update {
  const _$Update(this.request, this.id);

  @override
  final UpdateNoteRequest request;
  @override
  final int id;

  @override
  String toString() {
    return 'NoteEvent.update(request: $request, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Update &&
            const DeepCollectionEquality().equals(other.request, request) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(request),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$UpdateCopyWith<_$Update> get copyWith =>
      __$$UpdateCopyWithImpl<_$Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function() toggleViewType,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(NoteItem? note) setSelectedNote,
    required TResult Function(LoginTokenRequest request) token,
    required TResult Function() logout,
  }) {
    return update(request, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
  }) {
    return update?.call(request, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(request, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FilterNote value) filterNotes,
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(SetSelectedNote value) setSelectedNote,
    required TResult Function(Token value) token,
    required TResult Function(Logout value) logout,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements NoteEvent {
  const factory Update(final UpdateNoteRequest request, final int id) =
      _$Update;

  UpdateNoteRequest get request;
  int get id;
  @JsonKey(ignore: true)
  _$$UpdateCopyWith<_$Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSelectedNoteCopyWith<$Res> {
  factory _$$SetSelectedNoteCopyWith(
          _$SetSelectedNote value, $Res Function(_$SetSelectedNote) then) =
      __$$SetSelectedNoteCopyWithImpl<$Res>;
  $Res call({NoteItem? note});

  $NoteItemCopyWith<$Res>? get note;
}

/// @nodoc
class __$$SetSelectedNoteCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res>
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

class _$SetSelectedNote implements SetSelectedNote {
  const _$SetSelectedNote(this.note);

  @override
  final NoteItem? note;

  @override
  String toString() {
    return 'NoteEvent.setSelectedNote(note: $note)';
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
    required TResult Function() started,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function() toggleViewType,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(NoteItem? note) setSelectedNote,
    required TResult Function(LoginTokenRequest request) token,
    required TResult Function() logout,
  }) {
    return setSelectedNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
  }) {
    return setSelectedNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
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
    required TResult Function(Started value) started,
    required TResult Function(FilterNote value) filterNotes,
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(SetSelectedNote value) setSelectedNote,
    required TResult Function(Token value) token,
    required TResult Function(Logout value) logout,
  }) {
    return setSelectedNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
  }) {
    return setSelectedNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (setSelectedNote != null) {
      return setSelectedNote(this);
    }
    return orElse();
  }
}

abstract class SetSelectedNote implements NoteEvent {
  const factory SetSelectedNote(final NoteItem? note) = _$SetSelectedNote;

  NoteItem? get note;
  @JsonKey(ignore: true)
  _$$SetSelectedNoteCopyWith<_$SetSelectedNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenCopyWith<$Res> {
  factory _$$TokenCopyWith(_$Token value, $Res Function(_$Token) then) =
      __$$TokenCopyWithImpl<$Res>;
  $Res call({LoginTokenRequest request});

  $LoginTokenRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$TokenCopyWithImpl<$Res> extends _$NoteEventCopyWithImpl<$Res>
    implements _$$TokenCopyWith<$Res> {
  __$$TokenCopyWithImpl(_$Token _value, $Res Function(_$Token) _then)
      : super(_value, (v) => _then(v as _$Token));

  @override
  _$Token get _value => super._value as _$Token;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_$Token(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as LoginTokenRequest,
    ));
  }

  @override
  $LoginTokenRequestCopyWith<$Res> get request {
    return $LoginTokenRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$Token implements Token {
  const _$Token(this.request);

  @override
  final LoginTokenRequest request;

  @override
  String toString() {
    return 'NoteEvent.token(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Token &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  _$$TokenCopyWith<_$Token> get copyWith =>
      __$$TokenCopyWithImpl<_$Token>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function() toggleViewType,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(NoteItem? note) setSelectedNote,
    required TResult Function(LoginTokenRequest request) token,
    required TResult Function() logout,
  }) {
    return token(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
  }) {
    return token?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (token != null) {
      return token(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FilterNote value) filterNotes,
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(SetSelectedNote value) setSelectedNote,
    required TResult Function(Token value) token,
    required TResult Function(Logout value) logout,
  }) {
    return token(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
  }) {
    return token?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (token != null) {
      return token(this);
    }
    return orElse();
  }
}

abstract class Token implements NoteEvent {
  const factory Token(final LoginTokenRequest request) = _$Token;

  LoginTokenRequest get request;
  @JsonKey(ignore: true)
  _$$TokenCopyWith<_$Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutCopyWith<$Res> {
  factory _$$LogoutCopyWith(_$Logout value, $Res Function(_$Logout) then) =
      __$$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutCopyWithImpl<$Res> extends _$NoteEventCopyWithImpl<$Res>
    implements _$$LogoutCopyWith<$Res> {
  __$$LogoutCopyWithImpl(_$Logout _value, $Res Function(_$Logout) _then)
      : super(_value, (v) => _then(v as _$Logout));

  @override
  _$Logout get _value => super._value as _$Logout;
}

/// @nodoc

class _$Logout implements Logout {
  const _$Logout();

  @override
  String toString() {
    return 'NoteEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function() toggleViewType,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(NoteItem? note) setSelectedNote,
    required TResult Function(LoginTokenRequest request) token,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function()? toggleViewType,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(NoteItem? note)? setSelectedNote,
    TResult Function(LoginTokenRequest request)? token,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FilterNote value) filterNotes,
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(SetSelectedNote value) setSelectedNote,
    required TResult Function(Token value) token,
    required TResult Function(Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FilterNote value)? filterNotes,
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    TResult Function(Token value)? token,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements NoteEvent {
  const factory Logout() = _$Logout;
}

/// @nodoc
mixin _$NoteState {
  NoteViewType get viewType => throw _privateConstructorUsedError;
  List<NoteItem> get notes => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  NoteItem? get note => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteStateCopyWith<NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteStateCopyWith<$Res> {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) then) =
      _$NoteStateCopyWithImpl<$Res>;
  $Res call(
      {NoteViewType viewType,
      List<NoteItem> notes,
      int page,
      bool isLastPage,
      DataStatus status,
      String msg,
      NoteItem? note,
      String token});

  $NoteItemCopyWith<$Res>? get note;
}

/// @nodoc
class _$NoteStateCopyWithImpl<$Res> implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._value, this._then);

  final NoteState _value;
  // ignore: unused_field
  final $Res Function(NoteState) _then;

  @override
  $Res call({
    Object? viewType = freezed,
    Object? notes = freezed,
    Object? page = freezed,
    Object? isLastPage = freezed,
    Object? status = freezed,
    Object? msg = freezed,
    Object? note = freezed,
    Object? token = freezed,
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
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteItem?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_NoteStateCopyWith<$Res> implements $NoteStateCopyWith<$Res> {
  factory _$$_NoteStateCopyWith(
          _$_NoteState value, $Res Function(_$_NoteState) then) =
      __$$_NoteStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {NoteViewType viewType,
      List<NoteItem> notes,
      int page,
      bool isLastPage,
      DataStatus status,
      String msg,
      NoteItem? note,
      String token});

  @override
  $NoteItemCopyWith<$Res>? get note;
}

/// @nodoc
class __$$_NoteStateCopyWithImpl<$Res> extends _$NoteStateCopyWithImpl<$Res>
    implements _$$_NoteStateCopyWith<$Res> {
  __$$_NoteStateCopyWithImpl(
      _$_NoteState _value, $Res Function(_$_NoteState) _then)
      : super(_value, (v) => _then(v as _$_NoteState));

  @override
  _$_NoteState get _value => super._value as _$_NoteState;

  @override
  $Res call({
    Object? viewType = freezed,
    Object? notes = freezed,
    Object? page = freezed,
    Object? isLastPage = freezed,
    Object? status = freezed,
    Object? msg = freezed,
    Object? note = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_NoteState(
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
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteItem?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoteState extends _NoteState {
  const _$_NoteState(
      {required this.viewType,
      required final List<NoteItem> notes,
      required this.page,
      required this.isLastPage,
      required this.status,
      required this.msg,
      this.note,
      required this.token})
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
  final String msg;
  @override
  final NoteItem? note;
  @override
  final String token;

  @override
  String toString() {
    return 'NoteState(viewType: $viewType, notes: $notes, page: $page, isLastPage: $isLastPage, status: $status, msg: $msg, note: $note, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteState &&
            const DeepCollectionEquality().equals(other.viewType, viewType) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.isLastPage, isLastPage) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.msg, msg) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(viewType),
      const DeepCollectionEquality().hash(_notes),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(isLastPage),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(msg),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_NoteStateCopyWith<_$_NoteState> get copyWith =>
      __$$_NoteStateCopyWithImpl<_$_NoteState>(this, _$identity);
}

abstract class _NoteState extends NoteState {
  const factory _NoteState(
      {required final NoteViewType viewType,
      required final List<NoteItem> notes,
      required final int page,
      required final bool isLastPage,
      required final DataStatus status,
      required final String msg,
      final NoteItem? note,
      required final String token}) = _$_NoteState;
  const _NoteState._() : super._();

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
  String get msg;
  @override
  NoteItem? get note;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_NoteStateCopyWith<_$_NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}
