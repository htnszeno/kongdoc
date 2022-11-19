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
    required TResult Function() albumsLoaded,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request) create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
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
    required TResult Function() albumsLoaded,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request) create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
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
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
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
abstract class _$$AlbumsLoadedCopyWith<$Res> {
  factory _$$AlbumsLoadedCopyWith(
          _$AlbumsLoaded value, $Res Function(_$AlbumsLoaded) then) =
      __$$AlbumsLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlbumsLoadedCopyWithImpl<$Res> extends _$SocialEventCopyWithImpl<$Res>
    implements _$$AlbumsLoadedCopyWith<$Res> {
  __$$AlbumsLoadedCopyWithImpl(
      _$AlbumsLoaded _value, $Res Function(_$AlbumsLoaded) _then)
      : super(_value, (v) => _then(v as _$AlbumsLoaded));

  @override
  _$AlbumsLoaded get _value => super._value as _$AlbumsLoaded;
}

/// @nodoc

class _$AlbumsLoaded implements AlbumsLoaded {
  const _$AlbumsLoaded();

  @override
  String toString() {
    return 'SocialEvent.albumsLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AlbumsLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() albumsLoaded,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request) create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return albumsLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return albumsLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    required TResult orElse(),
  }) {
    if (albumsLoaded != null) {
      return albumsLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
  }) {
    return albumsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
  }) {
    return albumsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    required TResult orElse(),
  }) {
    if (albumsLoaded != null) {
      return albumsLoaded(this);
    }
    return orElse();
  }
}

abstract class AlbumsLoaded implements SocialEvent {
  const factory AlbumsLoaded() = _$AlbumsLoaded;
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
    required TResult Function() albumsLoaded,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request) create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
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
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
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
    required TResult Function() albumsLoaded,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request) create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
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
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
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
    required TResult Function() albumsLoaded,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request) create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return setSelectedItem(selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return setSelectedItem?.call(selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
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
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
  }) {
    return setSelectedItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
  }) {
    return setSelectedItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
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
    required TResult Function() albumsLoaded,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request) create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return update(request, postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return update?.call(request, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
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
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
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
  $Res call({CreateSocialRequest request});

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
  }) {
    return _then(_$Create(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateSocialRequest,
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
  const _$Create(this.request);

  @override
  final CreateSocialRequest request;

  @override
  String toString() {
    return 'SocialEvent.create(request: $request)';
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
    required TResult Function() albumsLoaded,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request) create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return create(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return create?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
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
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class Create implements SocialEvent {
  const factory Create(final CreateSocialRequest request) = _$Create;

  CreateSocialRequest get request;
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
    required TResult Function() albumsLoaded,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request) create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return delete(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return delete?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
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
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
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
    required TResult Function() albumsLoaded,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(SocialItem? selectedItem) setSelectedItem,
    required TResult Function(UpdateSocialRequest request, String postId)
        update,
    required TResult Function(CreateSocialRequest request) create,
    required TResult Function(String postId) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return filterNotes(type, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return filterNotes?.call(type, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? albumsLoaded,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(SocialItem? selectedItem)? setSelectedItem,
    TResult Function(UpdateSocialRequest request, String postId)? update,
    TResult Function(CreateSocialRequest request)? create,
    TResult Function(String postId)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
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
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetSelectedItem value) setSelectedItem,
    required TResult Function(Update value) update,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(Filter value) filterNotes,
  }) {
    return filterNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
  }) {
    return filterNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetSelectedItem value)? setSelectedItem,
    TResult Function(Update value)? update,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(Filter value)? filterNotes,
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
mixin _$SocialState {
  List<SocialItem> get listItems => throw _privateConstructorUsedError;
  SocialItem? get selectedItem => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  List<AssetPathEntity> get albums => throw _privateConstructorUsedError;
  AssetPathEntity? get selectedAlbum => throw _privateConstructorUsedError;
  List<AssetEntity> get selectedAlbumPhotos =>
      throw _privateConstructorUsedError;

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
      bool isLastPage,
      String msg,
      List<AssetPathEntity> albums,
      AssetPathEntity? selectedAlbum,
      List<AssetEntity> selectedAlbumPhotos});

  $SocialItemCopyWith<$Res>? get selectedItem;
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
    Object? isLastPage = freezed,
    Object? msg = freezed,
    Object? albums = freezed,
    Object? selectedAlbum = freezed,
    Object? selectedAlbumPhotos = freezed,
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
      bool isLastPage,
      String msg,
      List<AssetPathEntity> albums,
      AssetPathEntity? selectedAlbum,
      List<AssetEntity> selectedAlbumPhotos});

  @override
  $SocialItemCopyWith<$Res>? get selectedItem;
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
    Object? isLastPage = freezed,
    Object? msg = freezed,
    Object? albums = freezed,
    Object? selectedAlbum = freezed,
    Object? selectedAlbumPhotos = freezed,
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
      required this.isLastPage,
      required this.msg,
      required final List<AssetPathEntity> albums,
      this.selectedAlbum,
      required final List<AssetEntity> selectedAlbumPhotos})
      : _listItems = listItems,
        _albums = albums,
        _selectedAlbumPhotos = selectedAlbumPhotos,
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

  @override
  String toString() {
    return 'SocialState(listItems: $listItems, selectedItem: $selectedItem, page: $page, status: $status, isLastPage: $isLastPage, msg: $msg, albums: $albums, selectedAlbum: $selectedAlbum, selectedAlbumPhotos: $selectedAlbumPhotos)';
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
                .equals(other.isLastPage, isLastPage) &&
            const DeepCollectionEquality().equals(other.msg, msg) &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            const DeepCollectionEquality()
                .equals(other.selectedAlbum, selectedAlbum) &&
            const DeepCollectionEquality()
                .equals(other._selectedAlbumPhotos, _selectedAlbumPhotos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listItems),
      const DeepCollectionEquality().hash(selectedItem),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(isLastPage),
      const DeepCollectionEquality().hash(msg),
      const DeepCollectionEquality().hash(_albums),
      const DeepCollectionEquality().hash(selectedAlbum),
      const DeepCollectionEquality().hash(_selectedAlbumPhotos));

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
      required final bool isLastPage,
      required final String msg,
      required final List<AssetPathEntity> albums,
      final AssetPathEntity? selectedAlbum,
      required final List<AssetEntity> selectedAlbumPhotos}) = _$_SocialState;
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
  @JsonKey(ignore: true)
  _$$_SocialStateCopyWith<_$_SocialState> get copyWith =>
      throw _privateConstructorUsedError;
}
