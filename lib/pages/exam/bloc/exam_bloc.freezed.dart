// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExamEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(ExamItem? exam) setSelectedExam,
    required TResult Function(UpdateExamRequest request, int id) update,
    required TResult Function(CreateExamRequest request) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(ExamItem? exam)? setSelectedExam,
    TResult? Function(UpdateExamRequest request, int id)? update,
    TResult? Function(CreateExamRequest request)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(ExamItem? exam)? setSelectedExam,
    TResult Function(UpdateExamRequest request, int id)? update,
    TResult Function(CreateExamRequest request)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedExam value) setSelectedExam,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetSelectedExam value)? setSelectedExam,
    TResult? Function(Update value)? update,
    TResult? Function(Create value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedExam value)? setSelectedExam,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamEventCopyWith<$Res> {
  factory $ExamEventCopyWith(ExamEvent value, $Res Function(ExamEvent) then) =
      _$ExamEventCopyWithImpl<$Res, ExamEvent>;
}

/// @nodoc
class _$ExamEventCopyWithImpl<$Res, $Val extends ExamEvent>
    implements $ExamEventCopyWith<$Res> {
  _$ExamEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'ExamEvent.started()';
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
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(ExamItem? exam) setSelectedExam,
    required TResult Function(UpdateExamRequest request, int id) update,
    required TResult Function(CreateExamRequest request) create,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(ExamItem? exam)? setSelectedExam,
    TResult? Function(UpdateExamRequest request, int id)? update,
    TResult? Function(CreateExamRequest request)? create,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(ExamItem? exam)? setSelectedExam,
    TResult Function(UpdateExamRequest request, int id)? update,
    TResult Function(CreateExamRequest request)? create,
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
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedExam value) setSelectedExam,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetSelectedExam value)? setSelectedExam,
    TResult? Function(Update value)? update,
    TResult? Function(Create value)? create,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedExam value)? setSelectedExam,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements ExamEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$LoadMoreCopyWith<$Res> {
  factory _$$LoadMoreCopyWith(
          _$LoadMore value, $Res Function(_$LoadMore) then) =
      __$$LoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$LoadMore>
    implements _$$LoadMoreCopyWith<$Res> {
  __$$LoadMoreCopyWithImpl(_$LoadMore _value, $Res Function(_$LoadMore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMore implements LoadMore {
  const _$LoadMore();

  @override
  String toString() {
    return 'ExamEvent.loadMore()';
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
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(ExamItem? exam) setSelectedExam,
    required TResult Function(UpdateExamRequest request, int id) update,
    required TResult Function(CreateExamRequest request) create,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(ExamItem? exam)? setSelectedExam,
    TResult? Function(UpdateExamRequest request, int id)? update,
    TResult? Function(CreateExamRequest request)? create,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(ExamItem? exam)? setSelectedExam,
    TResult Function(UpdateExamRequest request, int id)? update,
    TResult Function(CreateExamRequest request)? create,
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
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedExam value) setSelectedExam,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetSelectedExam value)? setSelectedExam,
    TResult? Function(Update value)? update,
    TResult? Function(Create value)? create,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedExam value)? setSelectedExam,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMore implements ExamEvent {
  const factory LoadMore() = _$LoadMore;
}

/// @nodoc
abstract class _$$RefreshCopyWith<$Res> {
  factory _$$RefreshCopyWith(_$Refresh value, $Res Function(_$Refresh) then) =
      __$$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$Refresh>
    implements _$$RefreshCopyWith<$Res> {
  __$$RefreshCopyWithImpl(_$Refresh _value, $Res Function(_$Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Refresh implements Refresh {
  const _$Refresh();

  @override
  String toString() {
    return 'ExamEvent.refresh()';
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
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(ExamItem? exam) setSelectedExam,
    required TResult Function(UpdateExamRequest request, int id) update,
    required TResult Function(CreateExamRequest request) create,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(ExamItem? exam)? setSelectedExam,
    TResult? Function(UpdateExamRequest request, int id)? update,
    TResult? Function(CreateExamRequest request)? create,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(ExamItem? exam)? setSelectedExam,
    TResult Function(UpdateExamRequest request, int id)? update,
    TResult Function(CreateExamRequest request)? create,
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
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedExam value) setSelectedExam,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetSelectedExam value)? setSelectedExam,
    TResult? Function(Update value)? update,
    TResult? Function(Create value)? create,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedExam value)? setSelectedExam,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements ExamEvent {
  const factory Refresh() = _$Refresh;
}

/// @nodoc
abstract class _$$SetSelectedExamCopyWith<$Res> {
  factory _$$SetSelectedExamCopyWith(
          _$SetSelectedExam value, $Res Function(_$SetSelectedExam) then) =
      __$$SetSelectedExamCopyWithImpl<$Res>;
  @useResult
  $Res call({ExamItem? exam});

  $ExamItemCopyWith<$Res>? get exam;
}

/// @nodoc
class __$$SetSelectedExamCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$SetSelectedExam>
    implements _$$SetSelectedExamCopyWith<$Res> {
  __$$SetSelectedExamCopyWithImpl(
      _$SetSelectedExam _value, $Res Function(_$SetSelectedExam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exam = freezed,
  }) {
    return _then(_$SetSelectedExam(
      freezed == exam
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as ExamItem?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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

class _$SetSelectedExam implements SetSelectedExam {
  const _$SetSelectedExam(this.exam);

  @override
  final ExamItem? exam;

  @override
  String toString() {
    return 'ExamEvent.setSelectedExam(exam: $exam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedExam &&
            (identical(other.exam, exam) || other.exam == exam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedExamCopyWith<_$SetSelectedExam> get copyWith =>
      __$$SetSelectedExamCopyWithImpl<_$SetSelectedExam>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(ExamItem? exam) setSelectedExam,
    required TResult Function(UpdateExamRequest request, int id) update,
    required TResult Function(CreateExamRequest request) create,
  }) {
    return setSelectedExam(exam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(ExamItem? exam)? setSelectedExam,
    TResult? Function(UpdateExamRequest request, int id)? update,
    TResult? Function(CreateExamRequest request)? create,
  }) {
    return setSelectedExam?.call(exam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(ExamItem? exam)? setSelectedExam,
    TResult Function(UpdateExamRequest request, int id)? update,
    TResult Function(CreateExamRequest request)? create,
    required TResult orElse(),
  }) {
    if (setSelectedExam != null) {
      return setSelectedExam(exam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedExam value) setSelectedExam,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
  }) {
    return setSelectedExam(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetSelectedExam value)? setSelectedExam,
    TResult? Function(Update value)? update,
    TResult? Function(Create value)? create,
  }) {
    return setSelectedExam?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedExam value)? setSelectedExam,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    required TResult orElse(),
  }) {
    if (setSelectedExam != null) {
      return setSelectedExam(this);
    }
    return orElse();
  }
}

abstract class SetSelectedExam implements ExamEvent {
  const factory SetSelectedExam(final ExamItem? exam) = _$SetSelectedExam;

  ExamItem? get exam;
  @JsonKey(ignore: true)
  _$$SetSelectedExamCopyWith<_$SetSelectedExam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCopyWith<$Res> {
  factory _$$UpdateCopyWith(_$Update value, $Res Function(_$Update) then) =
      __$$UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateExamRequest request, int id});

  $UpdateExamRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$UpdateCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$Update>
    implements _$$UpdateCopyWith<$Res> {
  __$$UpdateCopyWithImpl(_$Update _value, $Res Function(_$Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? id = null,
  }) {
    return _then(_$Update(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UpdateExamRequest,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateExamRequestCopyWith<$Res> get request {
    return $UpdateExamRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$Update implements Update {
  const _$Update(this.request, this.id);

  @override
  final UpdateExamRequest request;
  @override
  final int id;

  @override
  String toString() {
    return 'ExamEvent.update(request: $request, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Update &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCopyWith<_$Update> get copyWith =>
      __$$UpdateCopyWithImpl<_$Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(ExamItem? exam) setSelectedExam,
    required TResult Function(UpdateExamRequest request, int id) update,
    required TResult Function(CreateExamRequest request) create,
  }) {
    return update(request, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(ExamItem? exam)? setSelectedExam,
    TResult? Function(UpdateExamRequest request, int id)? update,
    TResult? Function(CreateExamRequest request)? create,
  }) {
    return update?.call(request, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(ExamItem? exam)? setSelectedExam,
    TResult Function(UpdateExamRequest request, int id)? update,
    TResult Function(CreateExamRequest request)? create,
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
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedExam value) setSelectedExam,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetSelectedExam value)? setSelectedExam,
    TResult? Function(Update value)? update,
    TResult? Function(Create value)? create,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedExam value)? setSelectedExam,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements ExamEvent {
  const factory Update(final UpdateExamRequest request, final int id) =
      _$Update;

  UpdateExamRequest get request;
  int get id;
  @JsonKey(ignore: true)
  _$$UpdateCopyWith<_$Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCopyWith<$Res> {
  factory _$$CreateCopyWith(_$Create value, $Res Function(_$Create) then) =
      __$$CreateCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateExamRequest request});

  $CreateExamRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$CreateCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$Create>
    implements _$$CreateCopyWith<$Res> {
  __$$CreateCopyWithImpl(_$Create _value, $Res Function(_$Create) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$Create(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateExamRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateExamRequestCopyWith<$Res> get request {
    return $CreateExamRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$Create implements Create {
  const _$Create(this.request);

  @override
  final CreateExamRequest request;

  @override
  String toString() {
    return 'ExamEvent.create(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Create &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCopyWith<_$Create> get copyWith =>
      __$$CreateCopyWithImpl<_$Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(ExamItem? exam) setSelectedExam,
    required TResult Function(UpdateExamRequest request, int id) update,
    required TResult Function(CreateExamRequest request) create,
  }) {
    return create(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(ExamItem? exam)? setSelectedExam,
    TResult? Function(UpdateExamRequest request, int id)? update,
    TResult? Function(CreateExamRequest request)? create,
  }) {
    return create?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(ExamItem? exam)? setSelectedExam,
    TResult Function(UpdateExamRequest request, int id)? update,
    TResult Function(CreateExamRequest request)? create,
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
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedExam value) setSelectedExam,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetSelectedExam value)? setSelectedExam,
    TResult? Function(Update value)? update,
    TResult? Function(Create value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedExam value)? setSelectedExam,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class Create implements ExamEvent {
  const factory Create(final CreateExamRequest request) = _$Create;

  CreateExamRequest get request;
  @JsonKey(ignore: true)
  _$$CreateCopyWith<_$Create> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExamState {
  List<ExamItem> get items => throw _privateConstructorUsedError;
  ExamItem? get exam => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExamStateCopyWith<ExamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamStateCopyWith<$Res> {
  factory $ExamStateCopyWith(ExamState value, $Res Function(ExamState) then) =
      _$ExamStateCopyWithImpl<$Res, ExamState>;
  @useResult
  $Res call(
      {List<ExamItem> items,
      ExamItem? exam,
      int page,
      DataStatus status,
      bool isLastPage,
      String msg});

  $ExamItemCopyWith<$Res>? get exam;
}

/// @nodoc
class _$ExamStateCopyWithImpl<$Res, $Val extends ExamState>
    implements $ExamStateCopyWith<$Res> {
  _$ExamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? exam = freezed,
    Object? page = null,
    Object? status = null,
    Object? isLastPage = null,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExamItem>,
      exam: freezed == exam
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as ExamItem?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExamItemCopyWith<$Res>? get exam {
    if (_value.exam == null) {
      return null;
    }

    return $ExamItemCopyWith<$Res>(_value.exam!, (value) {
      return _then(_value.copyWith(exam: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExamStateCopyWith<$Res> implements $ExamStateCopyWith<$Res> {
  factory _$$_ExamStateCopyWith(
          _$_ExamState value, $Res Function(_$_ExamState) then) =
      __$$_ExamStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ExamItem> items,
      ExamItem? exam,
      int page,
      DataStatus status,
      bool isLastPage,
      String msg});

  @override
  $ExamItemCopyWith<$Res>? get exam;
}

/// @nodoc
class __$$_ExamStateCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$_ExamState>
    implements _$$_ExamStateCopyWith<$Res> {
  __$$_ExamStateCopyWithImpl(
      _$_ExamState _value, $Res Function(_$_ExamState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? exam = freezed,
    Object? page = null,
    Object? status = null,
    Object? isLastPage = null,
    Object? msg = null,
  }) {
    return _then(_$_ExamState(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExamItem>,
      exam: freezed == exam
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as ExamItem?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
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
      required this.msg})
      : _items = items,
        super._();

  final List<ExamItem> _items;
  @override
  List<ExamItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
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
  final String msg;

  @override
  String toString() {
    return 'ExamState(items: $items, exam: $exam, page: $page, status: $status, isLastPage: $isLastPage, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExamState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.exam, exam) || other.exam == exam) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      exam,
      page,
      status,
      isLastPage,
      msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      required final String msg}) = _$_ExamState;
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
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$_ExamStateCopyWith<_$_ExamState> get copyWith =>
      throw _privateConstructorUsedError;
}
