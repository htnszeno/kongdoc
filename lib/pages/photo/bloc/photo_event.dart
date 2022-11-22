part of 'photo_bloc.dart';

@freezed
class PhotoEvent with _$PhotoEvent {
  const factory PhotoEvent.started() = Started;

  const factory PhotoEvent.setSocialBloc(SocialBloc socialBloc) = SetSocialBloc;

  const factory PhotoEvent.albumsLoaded() = AlbumsLoaded;

  const factory PhotoEvent.setSelectedImage(AssetEntity selectedImage) =
      SetSelectedImage;

  const factory PhotoEvent.setSelectedAlbum(AssetPathEntity selectedAlbum) =
      SetSelectedAlbum;

  const factory PhotoEvent.setImageFilter() = SetImageFilter;
}
