// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exam_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExamState {
  List<ExamItem> get items => throw _privateConstructorUsedError;
  ExamItem? get exam => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExamStateCopyWith<ExamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamStateCopyWith<$Res> {
  factory $ExamStateCopyWith(ExamState value, $Res Function(ExamState) then) =
      _$ExamStateCopyWithImpl<$Res>;
  $Res call(
      {List<ExamItem> items,
      ExamItem? exam,
      int page,
      DataStatus status,
      bool isLastPage,
      String message});

  $ExamItemCopyWith<$Res>? get exam;
}

/// @nodoc
class _$ExamStateCopyWithImpl<$Res> implements $ExamStateCopyWith<$Res> {
  _$ExamStateCopyWithImpl(this._value, this._then);

  final ExamState _value;
  // ignore: unused_field
  final $Res Function(ExamState) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? exam = freezed,
    Object? page = freezed,
    Object? status = freezed,
    Object? isLastPage = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExamItem>,
      exam: exam == freezed
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as ExamItem?,
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

  @override
  $ExamItemCopyWith<$Res>? get exam {
    if (_value.exam == null) {
      return null;
    }

    return $ExamItemCopyWith<$Res>(_value.exam!, (value) {
      return _then(_value.copyWith(exam: value));
    });
  }
}

/// @nodoc
abstract class _$$_ExamStateCopyWith<$Res> implements $ExamStateCopyWith<$Res> {
  factory _$$_ExamStateCopyWith(
          _$_ExamState value, $Res Function(_$_ExamState) then) =
      __$$_ExamStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ExamItem> items,
      ExamItem? exam,
      int page,
      DataStatus status,
      bool isLastPage,
      String message});

  @override
  $ExamItemCopyWith<$Res>? get exam;
}

/// @nodoc
class __$$_ExamStateCopyWithImpl<$Res> extends _$ExamStateCopyWithImpl<$Res>
    implements _$$_ExamStateCopyWith<$Res> {
  __$$_ExamStateCopyWithImpl(
      _$_ExamState _value, $Res Function(_$_ExamState) _then)
      : super(_value, (v) => _then(v as _$_ExamState));

  @override
  _$_ExamState get _value => super._value as _$_ExamState;

  @override
  $Res call({
    Object? items = freezed,
    Object? exam = freezed,
    Object? page = freezed,
    Object? status = freezed,
    Object? isLastPage = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ExamState(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExamItem>,
      exam: exam == freezed
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as ExamItem?,
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

class _$_ExamState extends _ExamState {
  const _$_ExamState(
      {required final List<ExamItem> items,
      required this.exam,
      required this.page,
      required this.status,
      required this.isLastPage,
      required this.message})
      : _items = items,
        super._();

  final List<ExamItem> _items;
  @override
  List<ExamItem> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final ExamItem? exam;
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
    return 'ExamState(items: $items, exam: $exam, page: $page, status: $status, isLastPage: $isLastPage, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExamState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.exam, exam) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.isLastPage, isLastPage) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(exam),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(isLastPage),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ExamStateCopyWith<_$_ExamState> get copyWith =>
      __$$_ExamStateCopyWithImpl<_$_ExamState>(this, _$identity);
}

abstract class _ExamState extends ExamState {
  const factory _ExamState(
      {required final List<ExamItem> items,
      required final ExamItem? exam,
      required final int page,
      required final DataStatus status,
      required final bool isLastPage,
      required final String message}) = _$_ExamState;
  const _ExamState._() : super._();

  @override
  List<ExamItem> get items;
  @override
  ExamItem? get exam;
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
  _$$_ExamStateCopyWith<_$_ExamState> get copyWith =>
      throw _privateConstructorUsedError;
}
