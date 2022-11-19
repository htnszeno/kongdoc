part of 'photo_bloc.dart';

@freezed
class PhotoState with _$PhotoState {
  const PhotoState._();

  const factory PhotoState({
    required String? headerTitle,
    required List<AssetPathEntity> albums,
    required AssetPathEntity? selectedAlbum,
    required List<AssetEntity> selectedAlbumPhotos,
    required AssetEntity? selectedImage
  }) = _PhotoState;

  factory PhotoState.initial() {
    return const PhotoState(
      headerTitle: null,
      albums: [],
      selectedAlbum: null,
      selectedAlbumPhotos: [],
      selectedImage: null
    );
  }

  bool get hasAlbums => albums.isNotEmpty;
}
