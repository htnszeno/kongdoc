import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_manager/photo_manager.dart';

part 'photo_bloc.freezed.dart';

part 'photo_event.dart';

part 'photo_state.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  PhotoBloc() : super(PhotoState.initial()) {
    on<AlbumsLoaded>((event, emit) async {
      await _getLocalPhotoAlbums(emit);
    });

    on<SetSelectedImage>((event, emit) async {
      emit(state.copyWith(
        selectedImage: event.selectedImage
      ));
    });
  }

  Future<void> _getLocalPhotoAlbums(Emitter<PhotoState> emit) async {
    var result = await PhotoManager.requestPermissionExtend();
    var albums = <AssetPathEntity>[];
    if (result.isAuth) {
      albums = await PhotoManager.getAssetPathList(
        type: RequestType.image,
        filterOption: FilterOptionGroup(
          imageOption: const FilterOption(
            sizeConstraint: SizeConstraint(minHeight: 100, minWidth: 100),
          ),
          orders: [
            const OrderOption(type: OrderOptionType.createDate, asc: false),
          ],
        ),
      );
      if (albums.isNotEmpty) {
        var photos = await albums[0].getAssetListPaged(page: 0, size: 30);
        emit(state.copyWith(
            headerTitle: albums.first.name,
            albums: albums,
            selectedAlbum: albums.first,
            selectedAlbumPhotos: photos,
            selectedImage: photos.first));
      }
    }
  }
}
