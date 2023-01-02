// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'diary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiaryEvent {
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
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryEventCopyWith<$Res> {
  factory $DiaryEventCopyWith(
          DiaryEvent value, $Res Function(DiaryEvent) then) =
      _$DiaryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DiaryEventCopyWithImpl<$Res> implements $DiaryEventCopyWith<$Res> {
  _$DiaryEventCopyWithImpl(this._value, this._then);

  final DiaryEvent _value;
  // ignore: unused_field
  final $Res Function(DiaryEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$DiaryEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DiaryEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
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
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DiaryEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$DiaryState {
  List<DiaryItem> get listItems => throw _privateConstructorUsedError;
  DiaryItem? get selectedItem => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiaryStateCopyWith<DiaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryStateCopyWith<$Res> {
  factory $DiaryStateCopyWith(
          DiaryState value, $Res Function(DiaryState) then) =
      _$DiaryStateCopyWithImpl<$Res>;
  $Res call(
      {List<DiaryItem> listItems,
      DiaryItem? selectedItem,
      DataStatus status,
      String msg});

  $DiaryItemCopyWith<$Res>? get selectedItem;
}

/// @nodoc
class _$DiaryStateCopyWithImpl<$Res> implements $DiaryStateCopyWith<$Res> {
  _$DiaryStateCopyWithImpl(this._value, this._then);

  final DiaryState _value;
  // ignore: unused_field
  final $Res Function(DiaryState) _then;

  @override
  $Res call({
    Object? listItems = freezed,
    Object? selectedItem = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      listItems: listItems == freezed
          ? _value.listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<DiaryItem>,
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as DiaryItem?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $DiaryItemCopyWith<$Res>? get selectedItem {
    if (_value.selectedItem == null) {
      return null;
    }

    return $DiaryItemCopyWith<$Res>(_value.selectedItem!, (value) {
      return _then(_value.copyWith(selectedItem: value));
    });
  }
}

/// @nodoc
abstract class _$$_SocialStateCopyWith<$Res>
    implements $DiaryStateCopyWith<$Res> {
  factory _$$_SocialStateCopyWith(
          _$_SocialState value, $Res Function(_$_SocialState) then) =
      __$$_SocialStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<DiaryItem> listItems,
      DiaryItem? selectedItem,
      DataStatus status,
      String msg});

  @override
  $DiaryItemCopyWith<$Res>? get selectedItem;
}

/// @nodoc
class __$$_SocialStateCopyWithImpl<$Res> extends _$DiaryStateCopyWithImpl<$Res>
    implements _$$_SocialStateCopyWith<$Res> {
  __$$_SocialStateCopyWithImpl(
      _$_SocialState _value, $Res Function(_$_SocialState) _then)
      : super(_value, (v) => _then(v as _$_SocialState));

  @override
  _$_SocialState get _value => super._value as _$_SocialState;

  @override
  $Res call({
    Object? listItems = freezed,
    Object? selectedItem = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$_SocialState(
      listItems: listItems == freezed
          ? _value._listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<DiaryItem>,
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as DiaryItem?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SocialState extends _SocialState {
  const _$_SocialState(
      {required final List<DiaryItem> listItems,
      required this.selectedItem,
      required this.status,
      required this.msg})
      : _listItems = listItems,
        super._();

  final List<DiaryItem> _listItems;
  @override
  List<DiaryItem> get listItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listItems);
  }

  @override
  final DiaryItem? selectedItem;
  @override
  final DataStatus status;
  @override
  final String msg;

  @override
  String toString() {
    return 'DiaryState(listItems: $listItems, selectedItem: $selectedItem, status: $status, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialState &&
            const DeepCollectionEquality()
                .equals(other._listItems, _listItems) &&
            const DeepCollectionEquality()
                .equals(other.selectedItem, selectedItem) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listItems),
      const DeepCollectionEquality().hash(selectedItem),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$$_SocialStateCopyWith<_$_SocialState> get copyWith =>
      __$$_SocialStateCopyWithImpl<_$_SocialState>(this, _$identity);
}

abstract class _SocialState extends DiaryState {
  const factory _SocialState(
      {required final List<DiaryItem> listItems,
      required final DiaryItem? selectedItem,
      required final DataStatus status,
      required final String msg}) = _$_SocialState;
  const _SocialState._() : super._();

  @override
  List<DiaryItem> get listItems;
  @override
  DiaryItem? get selectedItem;
  @override
  DataStatus get status;
  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$_SocialStateCopyWith<_$_SocialState> get copyWith =>
      throw _privateConstructorUsedError;
}
