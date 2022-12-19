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
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
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
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
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
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
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
abstract class _$$FileUploadCopyWith<$Res> {
  factory _$$FileUploadCopyWith(
          _$FileUpload value, $Res Function(_$FileUpload) then) =
      __$$FileUploadCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class __$$FileUploadCopyWithImpl<$Res> extends _$SocialEventCopyWithImpl<$Res>
    implements _$$FileUploadCopyWith<$Res> {
  __$$FileUploadCopyWithImpl(
      _$FileUpload _value, $Res Function(_$FileUpload) _then)
      : super(_value, (v) => _then(v as _$FileUpload));

  @override
  _$FileUpload get _value => super._value as _$FileUpload;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$FileUpload(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$FileUpload implements FileUpload {
  const _$FileUpload(this.file);

  @override
  final File file;

  @override
  String toString() {
    return 'SocialEvent.fileUpload(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUpload &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$$FileUploadCopyWith<_$FileUpload> get copyWith =>
      __$$FileUploadCopyWithImpl<_$FileUpload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return fileUpload(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return fileUpload?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (fileUpload != null) {
      return fileUpload(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return fileUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return fileUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (fileUpload != null) {
      return fileUpload(this);
    }
    return orElse();
  }
}

abstract class FileUpload implements SocialEvent {
  const factory FileUpload(final File file) = _$FileUpload;

  File get file;
  @JsonKey(ignore: true)
  _$$FileUploadCopyWith<_$FileUpload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreCopyWith<$Res> {
  factory _$$LoadMoreCopyWith(
          _$LoadMore value, $Res Function(_$LoadMore) then) =
      __$$LoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreCopyWithImpl<$Res> extends _$SocialEventCopyWithImpl<$Res>
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
    return 'SocialEvent.loadMore()';
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
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
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
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMore implements SocialEvent {
  const factory LoadMore() = _$LoadMore;
}

/// @nodoc
abstract class _$$RefreshCopyWith<$Res> {
  factory _$$RefreshCopyWith(_$Refresh value, $Res Function(_$Refresh) then) =
      __$$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<$Res> extends _$SocialEventCopyWithImpl<$Res>
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
    return 'SocialEvent.refresh()';
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
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
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
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements SocialEvent {
  const factory Refresh() = _$Refresh;
}

/// @nodoc
abstract class _$$SetSelectedItemCopyWith<$Res> {
  factory _$$SetSelectedItemCopyWith(
          _$SetSelectedItem value, $Res Function(_$SetSelectedItem) then) =
      __$$SetSelectedItemCopyWithImpl<$Res>;
  $Res call({SocialItem? selectedItem});

  $SocialItemCopyWith<$Res>? get selectedItem;
}

/// @nodoc
class __$$SetSelectedItemCopyWithImpl<$Res>
    extends _$SocialEventCopyWithImpl<$Res>
    implements _$$SetSelectedItemCopyWith<$Res> {
  __$$SetSelectedItemCopyWithImpl(
      _$SetSelectedItem _value, $Res Function(_$SetSelectedItem) _then)
      : super(_value, (v) => _then(v as _$SetSelectedItem));

  @override
  _$SetSelectedItem get _value => super._value as _$SetSelectedItem;

  @override
  $Res call({
    Object? selectedItem = freezed,
  }) {
    return _then(_$SetSelectedItem(
      selectedItem == freezed
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as SocialItem?,
    ));
  }

  @override
  $SocialItemCopyWith<$Res>? get selectedItem {
    if (_value.selectedItem == null) {
      return null;
    }

    return $SocialItemCopyWith<$Res>(_value.selectedItem!, (value) {
      return _then(_value.copyWith(selectedItem: value));
    });
  }
}

/// @nodoc

class _$SetSelectedItem implements SetSelectedItem {
  const _$SetSelectedItem(this.selectedItem);

  @override
  final SocialItem? selectedItem;

  @override
  String toString() {
    return 'SocialEvent.setSelectedItem(selectedItem: $selectedItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedItem &&
            const DeepCollectionEquality()
                .equals(other.selectedItem, selectedItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedItem));

  @JsonKey(ignore: true)
  @override
  _$$SetSelectedItemCopyWith<_$SetSelectedItem> get copyWith =>
      __$$SetSelectedItemCopyWithImpl<_$SetSelectedItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return setSelectedItem(selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return setSelectedItem?.call(selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (setSelectedItem != null) {
      return setSelectedItem(selectedItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return setSelectedItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return setSelectedItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (setSelectedItem != null) {
      return setSelectedItem(this);
    }
    return orElse();
  }
}

abstract class SetSelectedItem implements SocialEvent {
  const factory SetSelectedItem(final SocialItem? selectedItem) =
      _$SetSelectedItem;

  SocialItem? get selectedItem;
  @JsonKey(ignore: true)
  _$$SetSelectedItemCopyWith<_$SetSelectedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCopyWith<$Res> {
  factory _$$UpdateCopyWith(_$Update value, $Res Function(_$Update) then) =
      __$$UpdateCopyWithImpl<$Res>;
  $Res call({UpdateSocialRequest request, String postId});

  $UpdateSocialRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$UpdateCopyWithImpl<$Res> extends _$SocialEventCopyWithImpl<$Res>
    implements _$$UpdateCopyWith<$Res> {
  __$$UpdateCopyWithImpl(_$Update _value, $Res Function(_$Update) _then)
      : super(_value, (v) => _then(v as _$Update));

  @override
  _$Update get _value => super._value as _$Update;

  @override
  $Res call({
    Object? request = freezed,
    Object? postId = freezed,
  }) {
    return _then(_$Update(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UpdateSocialRequest,
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UpdateSocialRequestCopyWith<$Res> get request {
    return $UpdateSocialRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$Update implements Update {
  const _$Update(this.request, this.postId);

  @override
  final UpdateSocialRequest request;
  @override
  final String postId;

  @override
  String toString() {
    return 'SocialEvent.update(request: $request, postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Update &&
            const DeepCollectionEquality().equals(other.request, request) &&
            const DeepCollectionEquality().equals(other.postId, postId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(request),
      const DeepCollectionEquality().hash(postId));

  @JsonKey(ignore: true)
  @override
  _$$UpdateCopyWith<_$Update> get copyWith =>
      __$$UpdateCopyWithImpl<_$Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return update(request, postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return update?.call(request, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(request, postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements SocialEvent {
  const factory Update(final UpdateSocialRequest request, final String postId) =
      _$Update;

  UpdateSocialRequest get request;
  String get postId;
  @JsonKey(ignore: true)
  _$$UpdateCopyWith<_$Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCopyWith<$Res> {
  factory _$$CreateCopyWith(_$Create value, $Res Function(_$Create) then) =
      __$$CreateCopyWithImpl<$Res>;
  $Res call({CreateSocialRequest request, List<File> images});

  $CreateSocialRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$CreateCopyWithImpl<$Res> extends _$SocialEventCopyWithImpl<$Res>
    implements _$$CreateCopyWith<$Res> {
  __$$CreateCopyWithImpl(_$Create _value, $Res Function(_$Create) _then)
      : super(_value, (v) => _then(v as _$Create));

  @override
  _$Create get _value => super._value as _$Create;

  @override
  $Res call({
    Object? request = freezed,
    Object? images = freezed,
  }) {
    return _then(_$Create(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateSocialRequest,
      images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }

  @override
  $CreateSocialRequestCopyWith<$Res> get request {
    return $CreateSocialRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$Create implements Create {
  const _$Create(this.request, final List<File> images) : _images = images;

  @override
  final CreateSocialRequest request;
  final List<File> _images;
  @override
  List<File> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'SocialEvent.create(request: $request, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Create &&
            const DeepCollectionEquality().equals(other.request, request) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(request),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  _$$CreateCopyWith<_$Create> get copyWith =>
      __$$CreateCopyWithImpl<_$Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return create(request, images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return create?.call(request, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(request, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class Create implements SocialEvent {
  const factory Create(
      final CreateSocialRequest request, final List<File> images) = _$Create;

  CreateSocialRequest get request;
  List<File> get images;
  @JsonKey(ignore: true)
  _$$CreateCopyWith<_$Create> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCopyWith<$Res> {
  factory _$$DeleteCopyWith(_$Delete value, $Res Function(_$Delete) then) =
      __$$DeleteCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class __$$DeleteCopyWithImpl<$Res> extends _$SocialEventCopyWithImpl<$Res>
    implements _$$DeleteCopyWith<$Res> {
  __$$DeleteCopyWithImpl(_$Delete _value, $Res Function(_$Delete) _then)
      : super(_value, (v) => _then(v as _$Delete));

  @override
  _$Delete get _value => super._value as _$Delete;

  @override
  $Res call({
    Object? postId = freezed,
  }) {
    return _then(_$Delete(
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Delete implements Delete {
  const _$Delete(this.postId);

  @override
  final String postId;

  @override
  String toString() {
    return 'SocialEvent.delete(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Delete &&
            const DeepCollectionEquality().equals(other.postId, postId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postId));

  @JsonKey(ignore: true)
  @override
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      __$$DeleteCopyWithImpl<_$Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return delete(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return delete?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements SocialEvent {
  const factory Delete(final String postId) = _$Delete;

  String get postId;
  @JsonKey(ignore: true)
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterCopyWith<$Res> {
  factory _$$FilterCopyWith(_$Filter value, $Res Function(_$Filter) then) =
      __$$FilterCopyWithImpl<$Res>;
  $Res call({FilterDataType type, dynamic data});
}

/// @nodoc
class __$$FilterCopyWithImpl<$Res> extends _$SocialEventCopyWithImpl<$Res>
    implements _$$FilterCopyWith<$Res> {
  __$$FilterCopyWithImpl(_$Filter _value, $Res Function(_$Filter) _then)
      : super(_value, (v) => _then(v as _$Filter));

  @override
  _$Filter get _value => super._value as _$Filter;

  @override
  $Res call({
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_$Filter(
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

class _$Filter implements Filter {
  const _$Filter(this.type, this.data);

  @override
  final FilterDataType type;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'SocialEvent.filterNotes(type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Filter &&
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
  _$$FilterCopyWith<_$Filter> get copyWith =>
      __$$FilterCopyWithImpl<_$Filter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return filterNotes(type, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return filterNotes?.call(type, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
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
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return filterNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return filterNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (filterNotes != null) {
      return filterNotes(this);
    }
    return orElse();
  }
}

abstract class Filter implements SocialEvent {
  const factory Filter(final FilterDataType type, final dynamic data) =
      _$Filter;

  FilterDataType get type;
  dynamic get data;
  @JsonKey(ignore: true)
  _$$FilterCopyWith<_$Filter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddLikeCountCopyWith<$Res> {
  factory _$$AddLikeCountCopyWith(
          _$AddLikeCount value, $Res Function(_$AddLikeCount) then) =
      __$$AddLikeCountCopyWithImpl<$Res>;
  $Res call({String postId, String userId});
}

/// @nodoc
class __$$AddLikeCountCopyWithImpl<$Res> extends _$SocialEventCopyWithImpl<$Res>
    implements _$$AddLikeCountCopyWith<$Res> {
  __$$AddLikeCountCopyWithImpl(
      _$AddLikeCount _value, $Res Function(_$AddLikeCount) _then)
      : super(_value, (v) => _then(v as _$AddLikeCount));

  @override
  _$AddLikeCount get _value => super._value as _$AddLikeCount;

  @override
  $Res call({
    Object? postId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$AddLikeCount(
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddLikeCount implements AddLikeCount {
  const _$AddLikeCount(this.postId, this.userId);

  @override
  final String postId;
  @override
  final String userId;

  @override
  String toString() {
    return 'SocialEvent.addLikeCount(postId: $postId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLikeCount &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$AddLikeCountCopyWith<_$AddLikeCount> get copyWith =>
      __$$AddLikeCountCopyWithImpl<_$AddLikeCount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return addLikeCount(postId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return addLikeCount?.call(postId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (addLikeCount != null) {
      return addLikeCount(postId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return addLikeCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return addLikeCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (addLikeCount != null) {
      return addLikeCount(this);
    }
    return orElse();
  }
}

abstract class AddLikeCount implements SocialEvent {
  const factory AddLikeCount(final String postId, final String userId) =
      _$AddLikeCount;

  String get postId;
  String get userId;
  @JsonKey(ignore: true)
  _$$AddLikeCountCopyWith<_$AddLikeCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReqeustLikeDataCopyWith<$Res> {
  factory _$$ReqeustLikeDataCopyWith(
          _$ReqeustLikeData value, $Res Function(_$ReqeustLikeData) then) =
      __$$ReqeustLikeDataCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class __$$ReqeustLikeDataCopyWithImpl<$Res>
    extends _$SocialEventCopyWithImpl<$Res>
    implements _$$ReqeustLikeDataCopyWith<$Res> {
  __$$ReqeustLikeDataCopyWithImpl(
      _$ReqeustLikeData _value, $Res Function(_$ReqeustLikeData) _then)
      : super(_value, (v) => _then(v as _$ReqeustLikeData));

  @override
  _$ReqeustLikeData get _value => super._value as _$ReqeustLikeData;

  @override
  $Res call({
    Object? postId = freezed,
  }) {
    return _then(_$ReqeustLikeData(
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReqeustLikeData implements ReqeustLikeData {
  const _$ReqeustLikeData(this.postId);

  @override
  final String postId;

  @override
  String toString() {
    return 'SocialEvent.reqeustLikeData(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqeustLikeData &&
            const DeepCollectionEquality().equals(other.postId, postId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postId));

  @JsonKey(ignore: true)
  @override
  _$$ReqeustLikeDataCopyWith<_$ReqeustLikeData> get copyWith =>
      __$$ReqeustLikeDataCopyWithImpl<_$ReqeustLikeData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return reqeustLikeData(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return reqeustLikeData?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (reqeustLikeData != null) {
      return reqeustLikeData(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return reqeustLikeData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return reqeustLikeData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (reqeustLikeData != null) {
      return reqeustLikeData(this);
    }
    return orElse();
  }
}

abstract class ReqeustLikeData implements SocialEvent {
  const factory ReqeustLikeData(final String postId) = _$ReqeustLikeData;

  String get postId;
  @JsonKey(ignore: true)
  _$$ReqeustLikeDataCopyWith<_$ReqeustLikeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCommentCopyWith<$Res> {
  factory _$$CreateCommentCopyWith(
          _$CreateComment value, $Res Function(_$CreateComment) then) =
      __$$CreateCommentCopyWithImpl<$Res>;
  $Res call({CommentRequest request});

  $CommentRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$CreateCommentCopyWithImpl<$Res>
    extends _$SocialEventCopyWithImpl<$Res>
    implements _$$CreateCommentCopyWith<$Res> {
  __$$CreateCommentCopyWithImpl(
      _$CreateComment _value, $Res Function(_$CreateComment) _then)
      : super(_value, (v) => _then(v as _$CreateComment));

  @override
  _$CreateComment get _value => super._value as _$CreateComment;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_$CreateComment(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CommentRequest,
    ));
  }

  @override
  $CommentRequestCopyWith<$Res> get request {
    return $CommentRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$CreateComment implements CreateComment {
  const _$CreateComment(this.request);

  @override
  final CommentRequest request;

  @override
  String toString() {
    return 'SocialEvent.createComment(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateComment &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  _$$CreateCommentCopyWith<_$CreateComment> get copyWith =>
      __$$CreateCommentCopyWithImpl<_$CreateComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return createComment(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return createComment?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (createComment != null) {
      return createComment(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return createComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return createComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (createComment != null) {
      return createComment(this);
    }
    return orElse();
  }
}

abstract class CreateComment implements SocialEvent {
  const factory CreateComment(final CommentRequest request) = _$CreateComment;

  CommentRequest get request;
  @JsonKey(ignore: true)
  _$$CreateCommentCopyWith<_$CreateComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReqeustCommentDataCopyWith<$Res> {
  factory _$$ReqeustCommentDataCopyWith(_$ReqeustCommentData value,
          $Res Function(_$ReqeustCommentData) then) =
      __$$ReqeustCommentDataCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class __$$ReqeustCommentDataCopyWithImpl<$Res>
    extends _$SocialEventCopyWithImpl<$Res>
    implements _$$ReqeustCommentDataCopyWith<$Res> {
  __$$ReqeustCommentDataCopyWithImpl(
      _$ReqeustCommentData _value, $Res Function(_$ReqeustCommentData) _then)
      : super(_value, (v) => _then(v as _$ReqeustCommentData));

  @override
  _$ReqeustCommentData get _value => super._value as _$ReqeustCommentData;

  @override
  $Res call({
    Object? postId = freezed,
  }) {
    return _then(_$ReqeustCommentData(
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReqeustCommentData implements ReqeustCommentData {
  const _$ReqeustCommentData(this.postId);

  @override
  final String postId;

  @override
  String toString() {
    return 'SocialEvent.reqeustCommentData(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqeustCommentData &&
            const DeepCollectionEquality().equals(other.postId, postId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postId));

  @JsonKey(ignore: true)
  @override
  _$$ReqeustCommentDataCopyWith<_$ReqeustCommentData> get copyWith =>
      __$$ReqeustCommentDataCopyWithImpl<_$ReqeustCommentData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return reqeustCommentData(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return reqeustCommentData?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (reqeustCommentData != null) {
      return reqeustCommentData(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return reqeustCommentData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return reqeustCommentData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (reqeustCommentData != null) {
      return reqeustCommentData(this);
    }
    return orElse();
  }
}

abstract class ReqeustCommentData implements SocialEvent {
  const factory ReqeustCommentData(final String postId) = _$ReqeustCommentData;

  String get postId;
  @JsonKey(ignore: true)
  _$$ReqeustCommentDataCopyWith<_$ReqeustCommentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSelectedCommentItemCopyWith<$Res> {
  factory _$$SetSelectedCommentItemCopyWith(_$SetSelectedCommentItem value,
          $Res Function(_$SetSelectedCommentItem) then) =
      __$$SetSelectedCommentItemCopyWithImpl<$Res>;
  $Res call({CommentItem? selectedCommentItem});

  $CommentItemCopyWith<$Res>? get selectedCommentItem;
}

/// @nodoc
class __$$SetSelectedCommentItemCopyWithImpl<$Res>
    extends _$SocialEventCopyWithImpl<$Res>
    implements _$$SetSelectedCommentItemCopyWith<$Res> {
  __$$SetSelectedCommentItemCopyWithImpl(_$SetSelectedCommentItem _value,
      $Res Function(_$SetSelectedCommentItem) _then)
      : super(_value, (v) => _then(v as _$SetSelectedCommentItem));

  @override
  _$SetSelectedCommentItem get _value =>
      super._value as _$SetSelectedCommentItem;

  @override
  $Res call({
    Object? selectedCommentItem = freezed,
  }) {
    return _then(_$SetSelectedCommentItem(
      selectedCommentItem == freezed
          ? _value.selectedCommentItem
          : selectedCommentItem // ignore: cast_nullable_to_non_nullable
              as CommentItem?,
    ));
  }

  @override
  $CommentItemCopyWith<$Res>? get selectedCommentItem {
    if (_value.selectedCommentItem == null) {
      return null;
    }

    return $CommentItemCopyWith<$Res>(_value.selectedCommentItem!, (value) {
      return _then(_value.copyWith(selectedCommentItem: value));
    });
  }
}

/// @nodoc

class _$SetSelectedCommentItem implements SetSelectedCommentItem {
  const _$SetSelectedCommentItem(this.selectedCommentItem);

  @override
  final CommentItem? selectedCommentItem;

  @override
  String toString() {
    return 'SocialEvent.setSelectedCommentItem(selectedCommentItem: $selectedCommentItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedCommentItem &&
            const DeepCollectionEquality()
                .equals(other.selectedCommentItem, selectedCommentItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedCommentItem));

  @JsonKey(ignore: true)
  @override
  _$$SetSelectedCommentItemCopyWith<_$SetSelectedCommentItem> get copyWith =>
      __$$SetSelectedCommentItemCopyWithImpl<_$SetSelectedCommentItem>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File file) fileUpload,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request, List<File> images)
        create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
    required TResult Function(String postId, String userId) addLikeCount,
    required TResult Function(String postId) reqeustLikeData,
    required TResult Function(CommentRequest request) createComment,
    required TResult Function(String postId) reqeustCommentData,
    required TResult Function(CommentItem? selectedCommentItem)
        setSelectedCommentItem,
  }) {
    return setSelectedCommentItem(selectedCommentItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
  }) {
    return setSelectedCommentItem?.call(selectedCommentItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File file)? fileUpload,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request, List<File> images)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    TResult Function(String postId, String userId)? addLikeCount,
    TResult Function(String postId)? reqeustLikeData,
    TResult Function(CommentRequest request)? createComment,
    TResult Function(String postId)? reqeustCommentData,
    TResult Function(CommentItem? selectedCommentItem)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (setSelectedCommentItem != null) {
      return setSelectedCommentItem(selectedCommentItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FileUpload value) fileUpload,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
    required TResult Function(AddLikeCount value) addLikeCount,
    required TResult Function(ReqeustLikeData value) reqeustLikeData,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(ReqeustCommentData value) reqeustCommentData,
    required TResult Function(SetSelectedCommentItem value)
        setSelectedCommentItem,
  }) {
    return setSelectedCommentItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
  }) {
    return setSelectedCommentItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FileUpload value)? fileUpload,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    TResult Function(AddLikeCount value)? addLikeCount,
    TResult Function(ReqeustLikeData value)? reqeustLikeData,
    TResult Function(CreateComment value)? createComment,
    TResult Function(ReqeustCommentData value)? reqeustCommentData,
    TResult Function(SetSelectedCommentItem value)? setSelectedCommentItem,
    required TResult orElse(),
  }) {
    if (setSelectedCommentItem != null) {
      return setSelectedCommentItem(this);
    }
    return orElse();
  }
}

abstract class SetSelectedCommentItem implements SocialEvent {
  const factory SetSelectedCommentItem(final CommentItem? selectedCommentItem) =
      _$SetSelectedCommentItem;

  CommentItem? get selectedCommentItem;
  @JsonKey(ignore: true)
  _$$SetSelectedCommentItemCopyWith<_$SetSelectedCommentItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SocialState {
  List<SocialItem> get listItems => throw _privateConstructorUsedError;
  SocialItem? get selectedItem => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  int get returnType => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  List<AssetPathEntity> get albums => throw _privateConstructorUsedError;
  AssetPathEntity? get selectedAlbum => throw _privateConstructorUsedError;
  List<AssetEntity> get selectedAlbumPhotos =>
      throw _privateConstructorUsedError;
  List<SocialItem> get likeItems => throw _privateConstructorUsedError;
  List<CommentItem> get commentItems => throw _privateConstructorUsedError;
  CommentItem? get selectedCommentItem => throw _privateConstructorUsedError;
  String get instanceDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocialStateCopyWith<SocialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialStateCopyWith<$Res> {
  factory $SocialStateCopyWith(
          SocialState value, $Res Function(SocialState) then) =
      _$SocialStateCopyWithImpl<$Res>;
  $Res call(
      {List<SocialItem> listItems,
      SocialItem? selectedItem,
      int page,
      DataStatus status,
      int returnType,
      bool isLastPage,
      String msg,
      List<AssetPathEntity> albums,
      AssetPathEntity? selectedAlbum,
      List<AssetEntity> selectedAlbumPhotos,
      List<SocialItem> likeItems,
      List<CommentItem> commentItems,
      CommentItem? selectedCommentItem,
      String instanceDate});

  $SocialItemCopyWith<$Res>? get selectedItem;
  $CommentItemCopyWith<$Res>? get selectedCommentItem;
}

/// @nodoc
class _$SocialStateCopyWithImpl<$Res> implements $SocialStateCopyWith<$Res> {
  _$SocialStateCopyWithImpl(this._value, this._then);

  final SocialState _value;
  // ignore: unused_field
  final $Res Function(SocialState) _then;

  @override
  $Res call({
    Object? listItems = freezed,
    Object? selectedItem = freezed,
    Object? page = freezed,
    Object? status = freezed,
    Object? returnType = freezed,
    Object? isLastPage = freezed,
    Object? msg = freezed,
    Object? albums = freezed,
    Object? selectedAlbum = freezed,
    Object? selectedAlbumPhotos = freezed,
    Object? likeItems = freezed,
    Object? commentItems = freezed,
    Object? selectedCommentItem = freezed,
    Object? instanceDate = freezed,
  }) {
    return _then(_value.copyWith(
      listItems: listItems == freezed
          ? _value.listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<SocialItem>,
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as SocialItem?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      returnType: returnType == freezed
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      albums: albums == freezed
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<AssetPathEntity>,
      selectedAlbum: selectedAlbum == freezed
          ? _value.selectedAlbum
          : selectedAlbum // ignore: cast_nullable_to_non_nullable
              as AssetPathEntity?,
      selectedAlbumPhotos: selectedAlbumPhotos == freezed
          ? _value.selectedAlbumPhotos
          : selectedAlbumPhotos // ignore: cast_nullable_to_non_nullable
              as List<AssetEntity>,
      likeItems: likeItems == freezed
          ? _value.likeItems
          : likeItems // ignore: cast_nullable_to_non_nullable
              as List<SocialItem>,
      commentItems: commentItems == freezed
          ? _value.commentItems
          : commentItems // ignore: cast_nullable_to_non_nullable
              as List<CommentItem>,
      selectedCommentItem: selectedCommentItem == freezed
          ? _value.selectedCommentItem
          : selectedCommentItem // ignore: cast_nullable_to_non_nullable
              as CommentItem?,
      instanceDate: instanceDate == freezed
          ? _value.instanceDate
          : instanceDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SocialItemCopyWith<$Res>? get selectedItem {
    if (_value.selectedItem == null) {
      return null;
    }

    return $SocialItemCopyWith<$Res>(_value.selectedItem!, (value) {
      return _then(_value.copyWith(selectedItem: value));
    });
  }

  @override
  $CommentItemCopyWith<$Res>? get selectedCommentItem {
    if (_value.selectedCommentItem == null) {
      return null;
    }

    return $CommentItemCopyWith<$Res>(_value.selectedCommentItem!, (value) {
      return _then(_value.copyWith(selectedCommentItem: value));
    });
  }
}

/// @nodoc
abstract class _$$_SocialStateCopyWith<$Res>
    implements $SocialStateCopyWith<$Res> {
  factory _$$_SocialStateCopyWith(
          _$_SocialState value, $Res Function(_$_SocialState) then) =
      __$$_SocialStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SocialItem> listItems,
      SocialItem? selectedItem,
      int page,
      DataStatus status,
      int returnType,
      bool isLastPage,
      String msg,
      List<AssetPathEntity> albums,
      AssetPathEntity? selectedAlbum,
      List<AssetEntity> selectedAlbumPhotos,
      List<SocialItem> likeItems,
      List<CommentItem> commentItems,
      CommentItem? selectedCommentItem,
      String instanceDate});

  @override
  $SocialItemCopyWith<$Res>? get selectedItem;
  @override
  $CommentItemCopyWith<$Res>? get selectedCommentItem;
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
    Object? listItems = freezed,
    Object? selectedItem = freezed,
    Object? page = freezed,
    Object? status = freezed,
    Object? returnType = freezed,
    Object? isLastPage = freezed,
    Object? msg = freezed,
    Object? albums = freezed,
    Object? selectedAlbum = freezed,
    Object? selectedAlbumPhotos = freezed,
    Object? likeItems = freezed,
    Object? commentItems = freezed,
    Object? selectedCommentItem = freezed,
    Object? instanceDate = freezed,
  }) {
    return _then(_$_SocialState(
      listItems: listItems == freezed
          ? _value._listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<SocialItem>,
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as SocialItem?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      returnType: returnType == freezed
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      albums: albums == freezed
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<AssetPathEntity>,
      selectedAlbum: selectedAlbum == freezed
          ? _value.selectedAlbum
          : selectedAlbum // ignore: cast_nullable_to_non_nullable
              as AssetPathEntity?,
      selectedAlbumPhotos: selectedAlbumPhotos == freezed
          ? _value._selectedAlbumPhotos
          : selectedAlbumPhotos // ignore: cast_nullable_to_non_nullable
              as List<AssetEntity>,
      likeItems: likeItems == freezed
          ? _value._likeItems
          : likeItems // ignore: cast_nullable_to_non_nullable
              as List<SocialItem>,
      commentItems: commentItems == freezed
          ? _value._commentItems
          : commentItems // ignore: cast_nullable_to_non_nullable
              as List<CommentItem>,
      selectedCommentItem: selectedCommentItem == freezed
          ? _value.selectedCommentItem
          : selectedCommentItem // ignore: cast_nullable_to_non_nullable
              as CommentItem?,
      instanceDate: instanceDate == freezed
          ? _value.instanceDate
          : instanceDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SocialState extends _SocialState {
  const _$_SocialState(
      {required final List<SocialItem> listItems,
      required this.selectedItem,
      required this.page,
      required this.status,
      required this.returnType,
      required this.isLastPage,
      required this.msg,
      required final List<AssetPathEntity> albums,
      this.selectedAlbum,
      required final List<AssetEntity> selectedAlbumPhotos,
      required final List<SocialItem> likeItems,
      required final List<CommentItem> commentItems,
      required this.selectedCommentItem,
      required this.instanceDate})
      : _listItems = listItems,
        _albums = albums,
        _selectedAlbumPhotos = selectedAlbumPhotos,
        _likeItems = likeItems,
        _commentItems = commentItems,
        super._();

  final List<SocialItem> _listItems;
  @override
  List<SocialItem> get listItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listItems);
  }

  @override
  final SocialItem? selectedItem;
  @override
  final int page;
  @override
  final DataStatus status;
  @override
  final int returnType;
  @override
  final bool isLastPage;
  @override
  final String msg;
  final List<AssetPathEntity> _albums;
  @override
  List<AssetPathEntity> get albums {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  @override
  final AssetPathEntity? selectedAlbum;
  final List<AssetEntity> _selectedAlbumPhotos;
  @override
  List<AssetEntity> get selectedAlbumPhotos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedAlbumPhotos);
  }

  final List<SocialItem> _likeItems;
  @override
  List<SocialItem> get likeItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likeItems);
  }

  final List<CommentItem> _commentItems;
  @override
  List<CommentItem> get commentItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentItems);
  }

  @override
  final CommentItem? selectedCommentItem;
  @override
  final String instanceDate;

  @override
  String toString() {
    return 'SocialState(listItems: $listItems, selectedItem: $selectedItem, page: $page, status: $status, returnType: $returnType, isLastPage: $isLastPage, msg: $msg, albums: $albums, selectedAlbum: $selectedAlbum, selectedAlbumPhotos: $selectedAlbumPhotos, likeItems: $likeItems, commentItems: $commentItems, selectedCommentItem: $selectedCommentItem, instanceDate: $instanceDate)';
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
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.returnType, returnType) &&
            const DeepCollectionEquality()
                .equals(other.isLastPage, isLastPage) &&
            const DeepCollectionEquality().equals(other.msg, msg) &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            const DeepCollectionEquality()
                .equals(other.selectedAlbum, selectedAlbum) &&
            const DeepCollectionEquality()
                .equals(other._selectedAlbumPhotos, _selectedAlbumPhotos) &&
            const DeepCollectionEquality()
                .equals(other._likeItems, _likeItems) &&
            const DeepCollectionEquality()
                .equals(other._commentItems, _commentItems) &&
            const DeepCollectionEquality()
                .equals(other.selectedCommentItem, selectedCommentItem) &&
            const DeepCollectionEquality()
                .equals(other.instanceDate, instanceDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listItems),
      const DeepCollectionEquality().hash(selectedItem),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(returnType),
      const DeepCollectionEquality().hash(isLastPage),
      const DeepCollectionEquality().hash(msg),
      const DeepCollectionEquality().hash(_albums),
      const DeepCollectionEquality().hash(selectedAlbum),
      const DeepCollectionEquality().hash(_selectedAlbumPhotos),
      const DeepCollectionEquality().hash(_likeItems),
      const DeepCollectionEquality().hash(_commentItems),
      const DeepCollectionEquality().hash(selectedCommentItem),
      const DeepCollectionEquality().hash(instanceDate));

  @JsonKey(ignore: true)
  @override
  _$$_SocialStateCopyWith<_$_SocialState> get copyWith =>
      __$$_SocialStateCopyWithImpl<_$_SocialState>(this, _$identity);
}

abstract class _SocialState extends SocialState {
  const factory _SocialState(
      {required final List<SocialItem> listItems,
      required final SocialItem? selectedItem,
      required final int page,
      required final DataStatus status,
      required final int returnType,
      required final bool isLastPage,
      required final String msg,
      required final List<AssetPathEntity> albums,
      final AssetPathEntity? selectedAlbum,
      required final List<AssetEntity> selectedAlbumPhotos,
      required final List<SocialItem> likeItems,
      required final List<CommentItem> commentItems,
      required final CommentItem? selectedCommentItem,
      required final String instanceDate}) = _$_SocialState;
  const _SocialState._() : super._();

  @override
  List<SocialItem> get listItems;
  @override
  SocialItem? get selectedItem;
  @override
  int get page;
  @override
  DataStatus get status;
  @override
  int get returnType;
  @override
  bool get isLastPage;
  @override
  String get msg;
  @override
  List<AssetPathEntity> get albums;
  @override
  AssetPathEntity? get selectedAlbum;
  @override
  List<AssetEntity> get selectedAlbumPhotos;
  @override
  List<SocialItem> get likeItems;
  @override
  List<CommentItem> get commentItems;
  @override
  CommentItem? get selectedCommentItem;
  @override
  String get instanceDate;
  @override
  @JsonKey(ignore: true)
  _$$_SocialStateCopyWith<_$_SocialState> get copyWith =>
      throw _privateConstructorUsedError;
}
