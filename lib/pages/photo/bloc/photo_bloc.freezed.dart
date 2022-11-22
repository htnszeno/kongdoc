// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhotoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SocialBloc socialBloc) setSocialBloc,
    required TResult Function() albumsLoaded,
    required TResult Function(AssetEntity selectedImage) setSelectedImage,
    required TResult Function(AssetPathEntity selectedAlbum) setSelectedAlbum,
    required TResult Function() setImageFilter,
    required TResult Function() multiPhotoSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SetSocialBloc value) setSocialBloc,
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(SetSelectedImage value) setSelectedImage,
    required TResult Function(SetSelectedAlbum value) setSelectedAlbum,
    required TResult Function(SetImageFilter value) setImageFilter,
    required TResult Function(MultiPhotoSelection value) multiPhotoSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoEventCopyWith<$Res> {
  factory $PhotoEventCopyWith(
          PhotoEvent value, $Res Function(PhotoEvent) then) =
      _$PhotoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotoEventCopyWithImpl<$Res> implements $PhotoEventCopyWith<$Res> {
  _$PhotoEventCopyWithImpl(this._value, this._then);

  final PhotoEvent _value;
  // ignore: unused_field
  final $Res Function(PhotoEvent) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res> extends _$PhotoEventCopyWithImpl<$Res>
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
    return 'PhotoEvent.started()';
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
    required TResult Function(SocialBloc socialBloc) setSocialBloc,
    required TResult Function() albumsLoaded,
    required TResult Function(AssetEntity selectedImage) setSelectedImage,
    required TResult Function(AssetPathEntity selectedAlbum) setSelectedAlbum,
    required TResult Function() setImageFilter,
    required TResult Function() multiPhotoSelection,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
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
    required TResult Function(SetSocialBloc value) setSocialBloc,
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(SetSelectedImage value) setSelectedImage,
    required TResult Function(SetSelectedAlbum value) setSelectedAlbum,
    required TResult Function(SetImageFilter value) setImageFilter,
    required TResult Function(MultiPhotoSelection value) multiPhotoSelection,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements PhotoEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$SetSocialBlocCopyWith<$Res> {
  factory _$$SetSocialBlocCopyWith(
          _$SetSocialBloc value, $Res Function(_$SetSocialBloc) then) =
      __$$SetSocialBlocCopyWithImpl<$Res>;
  $Res call({SocialBloc socialBloc});
}

/// @nodoc
class __$$SetSocialBlocCopyWithImpl<$Res> extends _$PhotoEventCopyWithImpl<$Res>
    implements _$$SetSocialBlocCopyWith<$Res> {
  __$$SetSocialBlocCopyWithImpl(
      _$SetSocialBloc _value, $Res Function(_$SetSocialBloc) _then)
      : super(_value, (v) => _then(v as _$SetSocialBloc));

  @override
  _$SetSocialBloc get _value => super._value as _$SetSocialBloc;

  @override
  $Res call({
    Object? socialBloc = freezed,
  }) {
    return _then(_$SetSocialBloc(
      socialBloc == freezed
          ? _value.socialBloc
          : socialBloc // ignore: cast_nullable_to_non_nullable
              as SocialBloc,
    ));
  }
}

/// @nodoc

class _$SetSocialBloc implements SetSocialBloc {
  const _$SetSocialBloc(this.socialBloc);

  @override
  final SocialBloc socialBloc;

  @override
  String toString() {
    return 'PhotoEvent.setSocialBloc(socialBloc: $socialBloc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSocialBloc &&
            const DeepCollectionEquality()
                .equals(other.socialBloc, socialBloc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(socialBloc));

  @JsonKey(ignore: true)
  @override
  _$$SetSocialBlocCopyWith<_$SetSocialBloc> get copyWith =>
      __$$SetSocialBlocCopyWithImpl<_$SetSocialBloc>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SocialBloc socialBloc) setSocialBloc,
    required TResult Function() albumsLoaded,
    required TResult Function(AssetEntity selectedImage) setSelectedImage,
    required TResult Function(AssetPathEntity selectedAlbum) setSelectedAlbum,
    required TResult Function() setImageFilter,
    required TResult Function() multiPhotoSelection,
  }) {
    return setSocialBloc(socialBloc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
  }) {
    return setSocialBloc?.call(socialBloc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
    required TResult orElse(),
  }) {
    if (setSocialBloc != null) {
      return setSocialBloc(socialBloc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SetSocialBloc value) setSocialBloc,
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(SetSelectedImage value) setSelectedImage,
    required TResult Function(SetSelectedAlbum value) setSelectedAlbum,
    required TResult Function(SetImageFilter value) setImageFilter,
    required TResult Function(MultiPhotoSelection value) multiPhotoSelection,
  }) {
    return setSocialBloc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
  }) {
    return setSocialBloc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
    required TResult orElse(),
  }) {
    if (setSocialBloc != null) {
      return setSocialBloc(this);
    }
    return orElse();
  }
}

abstract class SetSocialBloc implements PhotoEvent {
  const factory SetSocialBloc(final SocialBloc socialBloc) = _$SetSocialBloc;

  SocialBloc get socialBloc;
  @JsonKey(ignore: true)
  _$$SetSocialBlocCopyWith<_$SetSocialBloc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlbumsLoadedCopyWith<$Res> {
  factory _$$AlbumsLoadedCopyWith(
          _$AlbumsLoaded value, $Res Function(_$AlbumsLoaded) then) =
      __$$AlbumsLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlbumsLoadedCopyWithImpl<$Res> extends _$PhotoEventCopyWithImpl<$Res>
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
    return 'PhotoEvent.albumsLoaded()';
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
    required TResult Function(SocialBloc socialBloc) setSocialBloc,
    required TResult Function() albumsLoaded,
    required TResult Function(AssetEntity selectedImage) setSelectedImage,
    required TResult Function(AssetPathEntity selectedAlbum) setSelectedAlbum,
    required TResult Function() setImageFilter,
    required TResult Function() multiPhotoSelection,
  }) {
    return albumsLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
  }) {
    return albumsLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
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
    required TResult Function(SetSocialBloc value) setSocialBloc,
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(SetSelectedImage value) setSelectedImage,
    required TResult Function(SetSelectedAlbum value) setSelectedAlbum,
    required TResult Function(SetImageFilter value) setImageFilter,
    required TResult Function(MultiPhotoSelection value) multiPhotoSelection,
  }) {
    return albumsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
  }) {
    return albumsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
    required TResult orElse(),
  }) {
    if (albumsLoaded != null) {
      return albumsLoaded(this);
    }
    return orElse();
  }
}

abstract class AlbumsLoaded implements PhotoEvent {
  const factory AlbumsLoaded() = _$AlbumsLoaded;
}

/// @nodoc
abstract class _$$SetSelectedImageCopyWith<$Res> {
  factory _$$SetSelectedImageCopyWith(
          _$SetSelectedImage value, $Res Function(_$SetSelectedImage) then) =
      __$$SetSelectedImageCopyWithImpl<$Res>;
  $Res call({AssetEntity selectedImage});
}

/// @nodoc
class __$$SetSelectedImageCopyWithImpl<$Res>
    extends _$PhotoEventCopyWithImpl<$Res>
    implements _$$SetSelectedImageCopyWith<$Res> {
  __$$SetSelectedImageCopyWithImpl(
      _$SetSelectedImage _value, $Res Function(_$SetSelectedImage) _then)
      : super(_value, (v) => _then(v as _$SetSelectedImage));

  @override
  _$SetSelectedImage get _value => super._value as _$SetSelectedImage;

  @override
  $Res call({
    Object? selectedImage = freezed,
  }) {
    return _then(_$SetSelectedImage(
      selectedImage == freezed
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as AssetEntity,
    ));
  }
}

/// @nodoc

class _$SetSelectedImage implements SetSelectedImage {
  const _$SetSelectedImage(this.selectedImage);

  @override
  final AssetEntity selectedImage;

  @override
  String toString() {
    return 'PhotoEvent.setSelectedImage(selectedImage: $selectedImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedImage &&
            const DeepCollectionEquality()
                .equals(other.selectedImage, selectedImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedImage));

  @JsonKey(ignore: true)
  @override
  _$$SetSelectedImageCopyWith<_$SetSelectedImage> get copyWith =>
      __$$SetSelectedImageCopyWithImpl<_$SetSelectedImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SocialBloc socialBloc) setSocialBloc,
    required TResult Function() albumsLoaded,
    required TResult Function(AssetEntity selectedImage) setSelectedImage,
    required TResult Function(AssetPathEntity selectedAlbum) setSelectedAlbum,
    required TResult Function() setImageFilter,
    required TResult Function() multiPhotoSelection,
  }) {
    return setSelectedImage(selectedImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
  }) {
    return setSelectedImage?.call(selectedImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
    required TResult orElse(),
  }) {
    if (setSelectedImage != null) {
      return setSelectedImage(selectedImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SetSocialBloc value) setSocialBloc,
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(SetSelectedImage value) setSelectedImage,
    required TResult Function(SetSelectedAlbum value) setSelectedAlbum,
    required TResult Function(SetImageFilter value) setImageFilter,
    required TResult Function(MultiPhotoSelection value) multiPhotoSelection,
  }) {
    return setSelectedImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
  }) {
    return setSelectedImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
    required TResult orElse(),
  }) {
    if (setSelectedImage != null) {
      return setSelectedImage(this);
    }
    return orElse();
  }
}

abstract class SetSelectedImage implements PhotoEvent {
  const factory SetSelectedImage(final AssetEntity selectedImage) =
      _$SetSelectedImage;

  AssetEntity get selectedImage;
  @JsonKey(ignore: true)
  _$$SetSelectedImageCopyWith<_$SetSelectedImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSelectedAlbumCopyWith<$Res> {
  factory _$$SetSelectedAlbumCopyWith(
          _$SetSelectedAlbum value, $Res Function(_$SetSelectedAlbum) then) =
      __$$SetSelectedAlbumCopyWithImpl<$Res>;
  $Res call({AssetPathEntity selectedAlbum});
}

/// @nodoc
class __$$SetSelectedAlbumCopyWithImpl<$Res>
    extends _$PhotoEventCopyWithImpl<$Res>
    implements _$$SetSelectedAlbumCopyWith<$Res> {
  __$$SetSelectedAlbumCopyWithImpl(
      _$SetSelectedAlbum _value, $Res Function(_$SetSelectedAlbum) _then)
      : super(_value, (v) => _then(v as _$SetSelectedAlbum));

  @override
  _$SetSelectedAlbum get _value => super._value as _$SetSelectedAlbum;

  @override
  $Res call({
    Object? selectedAlbum = freezed,
  }) {
    return _then(_$SetSelectedAlbum(
      selectedAlbum == freezed
          ? _value.selectedAlbum
          : selectedAlbum // ignore: cast_nullable_to_non_nullable
              as AssetPathEntity,
    ));
  }
}

/// @nodoc

class _$SetSelectedAlbum implements SetSelectedAlbum {
  const _$SetSelectedAlbum(this.selectedAlbum);

  @override
  final AssetPathEntity selectedAlbum;

  @override
  String toString() {
    return 'PhotoEvent.setSelectedAlbum(selectedAlbum: $selectedAlbum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedAlbum &&
            const DeepCollectionEquality()
                .equals(other.selectedAlbum, selectedAlbum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedAlbum));

  @JsonKey(ignore: true)
  @override
  _$$SetSelectedAlbumCopyWith<_$SetSelectedAlbum> get copyWith =>
      __$$SetSelectedAlbumCopyWithImpl<_$SetSelectedAlbum>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SocialBloc socialBloc) setSocialBloc,
    required TResult Function() albumsLoaded,
    required TResult Function(AssetEntity selectedImage) setSelectedImage,
    required TResult Function(AssetPathEntity selectedAlbum) setSelectedAlbum,
    required TResult Function() setImageFilter,
    required TResult Function() multiPhotoSelection,
  }) {
    return setSelectedAlbum(selectedAlbum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
  }) {
    return setSelectedAlbum?.call(selectedAlbum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
    required TResult orElse(),
  }) {
    if (setSelectedAlbum != null) {
      return setSelectedAlbum(selectedAlbum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SetSocialBloc value) setSocialBloc,
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(SetSelectedImage value) setSelectedImage,
    required TResult Function(SetSelectedAlbum value) setSelectedAlbum,
    required TResult Function(SetImageFilter value) setImageFilter,
    required TResult Function(MultiPhotoSelection value) multiPhotoSelection,
  }) {
    return setSelectedAlbum(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
  }) {
    return setSelectedAlbum?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
    required TResult orElse(),
  }) {
    if (setSelectedAlbum != null) {
      return setSelectedAlbum(this);
    }
    return orElse();
  }
}

abstract class SetSelectedAlbum implements PhotoEvent {
  const factory SetSelectedAlbum(final AssetPathEntity selectedAlbum) =
      _$SetSelectedAlbum;

  AssetPathEntity get selectedAlbum;
  @JsonKey(ignore: true)
  _$$SetSelectedAlbumCopyWith<_$SetSelectedAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetImageFilterCopyWith<$Res> {
  factory _$$SetImageFilterCopyWith(
          _$SetImageFilter value, $Res Function(_$SetImageFilter) then) =
      __$$SetImageFilterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetImageFilterCopyWithImpl<$Res>
    extends _$PhotoEventCopyWithImpl<$Res>
    implements _$$SetImageFilterCopyWith<$Res> {
  __$$SetImageFilterCopyWithImpl(
      _$SetImageFilter _value, $Res Function(_$SetImageFilter) _then)
      : super(_value, (v) => _then(v as _$SetImageFilter));

  @override
  _$SetImageFilter get _value => super._value as _$SetImageFilter;
}

/// @nodoc

class _$SetImageFilter implements SetImageFilter {
  const _$SetImageFilter();

  @override
  String toString() {
    return 'PhotoEvent.setImageFilter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetImageFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SocialBloc socialBloc) setSocialBloc,
    required TResult Function() albumsLoaded,
    required TResult Function(AssetEntity selectedImage) setSelectedImage,
    required TResult Function(AssetPathEntity selectedAlbum) setSelectedAlbum,
    required TResult Function() setImageFilter,
    required TResult Function() multiPhotoSelection,
  }) {
    return setImageFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
  }) {
    return setImageFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
    required TResult orElse(),
  }) {
    if (setImageFilter != null) {
      return setImageFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SetSocialBloc value) setSocialBloc,
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(SetSelectedImage value) setSelectedImage,
    required TResult Function(SetSelectedAlbum value) setSelectedAlbum,
    required TResult Function(SetImageFilter value) setImageFilter,
    required TResult Function(MultiPhotoSelection value) multiPhotoSelection,
  }) {
    return setImageFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
  }) {
    return setImageFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
    required TResult orElse(),
  }) {
    if (setImageFilter != null) {
      return setImageFilter(this);
    }
    return orElse();
  }
}

abstract class SetImageFilter implements PhotoEvent {
  const factory SetImageFilter() = _$SetImageFilter;
}

/// @nodoc
abstract class _$$MultiPhotoSelectionCopyWith<$Res> {
  factory _$$MultiPhotoSelectionCopyWith(_$MultiPhotoSelection value,
          $Res Function(_$MultiPhotoSelection) then) =
      __$$MultiPhotoSelectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MultiPhotoSelectionCopyWithImpl<$Res>
    extends _$PhotoEventCopyWithImpl<$Res>
    implements _$$MultiPhotoSelectionCopyWith<$Res> {
  __$$MultiPhotoSelectionCopyWithImpl(
      _$MultiPhotoSelection _value, $Res Function(_$MultiPhotoSelection) _then)
      : super(_value, (v) => _then(v as _$MultiPhotoSelection));

  @override
  _$MultiPhotoSelection get _value => super._value as _$MultiPhotoSelection;
}

/// @nodoc

class _$MultiPhotoSelection implements MultiPhotoSelection {
  const _$MultiPhotoSelection();

  @override
  String toString() {
    return 'PhotoEvent.multiPhotoSelection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MultiPhotoSelection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SocialBloc socialBloc) setSocialBloc,
    required TResult Function() albumsLoaded,
    required TResult Function(AssetEntity selectedImage) setSelectedImage,
    required TResult Function(AssetPathEntity selectedAlbum) setSelectedAlbum,
    required TResult Function() setImageFilter,
    required TResult Function() multiPhotoSelection,
  }) {
    return multiPhotoSelection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
  }) {
    return multiPhotoSelection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SocialBloc socialBloc)? setSocialBloc,
    TResult Function()? albumsLoaded,
    TResult Function(AssetEntity selectedImage)? setSelectedImage,
    TResult Function(AssetPathEntity selectedAlbum)? setSelectedAlbum,
    TResult Function()? setImageFilter,
    TResult Function()? multiPhotoSelection,
    required TResult orElse(),
  }) {
    if (multiPhotoSelection != null) {
      return multiPhotoSelection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SetSocialBloc value) setSocialBloc,
    required TResult Function(AlbumsLoaded value) albumsLoaded,
    required TResult Function(SetSelectedImage value) setSelectedImage,
    required TResult Function(SetSelectedAlbum value) setSelectedAlbum,
    required TResult Function(SetImageFilter value) setImageFilter,
    required TResult Function(MultiPhotoSelection value) multiPhotoSelection,
  }) {
    return multiPhotoSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
  }) {
    return multiPhotoSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SetSocialBloc value)? setSocialBloc,
    TResult Function(AlbumsLoaded value)? albumsLoaded,
    TResult Function(SetSelectedImage value)? setSelectedImage,
    TResult Function(SetSelectedAlbum value)? setSelectedAlbum,
    TResult Function(SetImageFilter value)? setImageFilter,
    TResult Function(MultiPhotoSelection value)? multiPhotoSelection,
    required TResult orElse(),
  }) {
    if (multiPhotoSelection != null) {
      return multiPhotoSelection(this);
    }
    return orElse();
  }
}

abstract class MultiPhotoSelection implements PhotoEvent {
  const factory MultiPhotoSelection() = _$MultiPhotoSelection;
}

/// @nodoc
mixin _$PhotoState {
  String? get headerTitle => throw _privateConstructorUsedError;
  List<AssetPathEntity> get albums => throw _privateConstructorUsedError;
  AssetPathEntity? get selectedAlbum => throw _privateConstructorUsedError;
  List<AssetEntity> get selectedAlbumPhotos =>
      throw _privateConstructorUsedError;
  AssetEntity? get selectedImage => throw _privateConstructorUsedError;
  List<AssetEntity?> get selectedImages => throw _privateConstructorUsedError;
  bool? get multiPhotoSelection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoStateCopyWith<PhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoStateCopyWith<$Res> {
  factory $PhotoStateCopyWith(
          PhotoState value, $Res Function(PhotoState) then) =
      _$PhotoStateCopyWithImpl<$Res>;
  $Res call(
      {String? headerTitle,
      List<AssetPathEntity> albums,
      AssetPathEntity? selectedAlbum,
      List<AssetEntity> selectedAlbumPhotos,
      AssetEntity? selectedImage,
      List<AssetEntity?> selectedImages,
      bool? multiPhotoSelection});
}

/// @nodoc
class _$PhotoStateCopyWithImpl<$Res> implements $PhotoStateCopyWith<$Res> {
  _$PhotoStateCopyWithImpl(this._value, this._then);

  final PhotoState _value;
  // ignore: unused_field
  final $Res Function(PhotoState) _then;

  @override
  $Res call({
    Object? headerTitle = freezed,
    Object? albums = freezed,
    Object? selectedAlbum = freezed,
    Object? selectedAlbumPhotos = freezed,
    Object? selectedImage = freezed,
    Object? selectedImages = freezed,
    Object? multiPhotoSelection = freezed,
  }) {
    return _then(_value.copyWith(
      headerTitle: headerTitle == freezed
          ? _value.headerTitle
          : headerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
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
      selectedImage: selectedImage == freezed
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
      selectedImages: selectedImages == freezed
          ? _value.selectedImages
          : selectedImages // ignore: cast_nullable_to_non_nullable
              as List<AssetEntity?>,
      multiPhotoSelection: multiPhotoSelection == freezed
          ? _value.multiPhotoSelection
          : multiPhotoSelection // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_PhotoStateCopyWith<$Res>
    implements $PhotoStateCopyWith<$Res> {
  factory _$$_PhotoStateCopyWith(
          _$_PhotoState value, $Res Function(_$_PhotoState) then) =
      __$$_PhotoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? headerTitle,
      List<AssetPathEntity> albums,
      AssetPathEntity? selectedAlbum,
      List<AssetEntity> selectedAlbumPhotos,
      AssetEntity? selectedImage,
      List<AssetEntity?> selectedImages,
      bool? multiPhotoSelection});
}

/// @nodoc
class __$$_PhotoStateCopyWithImpl<$Res> extends _$PhotoStateCopyWithImpl<$Res>
    implements _$$_PhotoStateCopyWith<$Res> {
  __$$_PhotoStateCopyWithImpl(
      _$_PhotoState _value, $Res Function(_$_PhotoState) _then)
      : super(_value, (v) => _then(v as _$_PhotoState));

  @override
  _$_PhotoState get _value => super._value as _$_PhotoState;

  @override
  $Res call({
    Object? headerTitle = freezed,
    Object? albums = freezed,
    Object? selectedAlbum = freezed,
    Object? selectedAlbumPhotos = freezed,
    Object? selectedImage = freezed,
    Object? selectedImages = freezed,
    Object? multiPhotoSelection = freezed,
  }) {
    return _then(_$_PhotoState(
      headerTitle: headerTitle == freezed
          ? _value.headerTitle
          : headerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
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
      selectedImage: selectedImage == freezed
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
      selectedImages: selectedImages == freezed
          ? _value._selectedImages
          : selectedImages // ignore: cast_nullable_to_non_nullable
              as List<AssetEntity?>,
      multiPhotoSelection: multiPhotoSelection == freezed
          ? _value.multiPhotoSelection
          : multiPhotoSelection // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_PhotoState extends _PhotoState {
  const _$_PhotoState(
      {required this.headerTitle,
      required final List<AssetPathEntity> albums,
      required this.selectedAlbum,
      required final List<AssetEntity> selectedAlbumPhotos,
      required this.selectedImage,
      required final List<AssetEntity?> selectedImages,
      this.multiPhotoSelection})
      : _albums = albums,
        _selectedAlbumPhotos = selectedAlbumPhotos,
        _selectedImages = selectedImages,
        super._();

  @override
  final String? headerTitle;
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
  final AssetEntity? selectedImage;
  final List<AssetEntity?> _selectedImages;
  @override
  List<AssetEntity?> get selectedImages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedImages);
  }

  @override
  final bool? multiPhotoSelection;

  @override
  String toString() {
    return 'PhotoState(headerTitle: $headerTitle, albums: $albums, selectedAlbum: $selectedAlbum, selectedAlbumPhotos: $selectedAlbumPhotos, selectedImage: $selectedImage, selectedImages: $selectedImages, multiPhotoSelection: $multiPhotoSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoState &&
            const DeepCollectionEquality()
                .equals(other.headerTitle, headerTitle) &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            const DeepCollectionEquality()
                .equals(other.selectedAlbum, selectedAlbum) &&
            const DeepCollectionEquality()
                .equals(other._selectedAlbumPhotos, _selectedAlbumPhotos) &&
            const DeepCollectionEquality()
                .equals(other.selectedImage, selectedImage) &&
            const DeepCollectionEquality()
                .equals(other._selectedImages, _selectedImages) &&
            const DeepCollectionEquality()
                .equals(other.multiPhotoSelection, multiPhotoSelection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(headerTitle),
      const DeepCollectionEquality().hash(_albums),
      const DeepCollectionEquality().hash(selectedAlbum),
      const DeepCollectionEquality().hash(_selectedAlbumPhotos),
      const DeepCollectionEquality().hash(selectedImage),
      const DeepCollectionEquality().hash(_selectedImages),
      const DeepCollectionEquality().hash(multiPhotoSelection));

  @JsonKey(ignore: true)
  @override
  _$$_PhotoStateCopyWith<_$_PhotoState> get copyWith =>
      __$$_PhotoStateCopyWithImpl<_$_PhotoState>(this, _$identity);
}

abstract class _PhotoState extends PhotoState {
  const factory _PhotoState(
      {required final String? headerTitle,
      required final List<AssetPathEntity> albums,
      required final AssetPathEntity? selectedAlbum,
      required final List<AssetEntity> selectedAlbumPhotos,
      required final AssetEntity? selectedImage,
      required final List<AssetEntity?> selectedImages,
      final bool? multiPhotoSelection}) = _$_PhotoState;
  const _PhotoState._() : super._();

  @override
  String? get headerTitle;
  @override
  List<AssetPathEntity> get albums;
  @override
  AssetPathEntity? get selectedAlbum;
  @override
  List<AssetEntity> get selectedAlbumPhotos;
  @override
  AssetEntity? get selectedImage;
  @override
  List<AssetEntity?> get selectedImages;
  @override
  bool? get multiPhotoSelection;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoStateCopyWith<_$_PhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}
