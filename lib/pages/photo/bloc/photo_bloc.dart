import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/view/social_upload_page.dart';
import 'package:image/image.dart' as imageLib;
import 'package:path/path.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photofilters/photofilters.dart';
import 'package:photofilters/widgets/photo_filter.dart';

part 'photo_bloc.freezed.dart';

part 'photo_event.dart';

part 'photo_state.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  File? filteredImage;
  SocialBloc? _socialBloc;

  PhotoBloc() : super(PhotoState.initial()) {
    on<SetSocialBloc>((event, emit) async {
      _socialBloc = event.socialBloc;
    });
    on<AlbumsLoaded>((event, emit) async {
      await _getLocalPhotoAlbums(emit);
    });

    on<SetSelectedImage>((event, emit) async {
      emit(state.copyWith(selectedImage: event.selectedImage));
    });

    on<SetSelectedAlbum>((event, emit) async {
      var photos =
          await event.selectedAlbum.getAssetListPaged(page: 0, size: 30);
      emit(state.copyWith(
          selectedImage: photos.first,
          selectedAlbumPhotos: photos,
          selectedAlbum: event.selectedAlbum));
    });

    on<SetImageFilter>((event, emit) async {
      gotoimageFilter(state.selectedImage!);
    });
  }

  void gotoimageFilter(AssetEntity selectedImage) async {
    var file = await selectedImage?.file;

    await Navigator.of(Get.context!).push(SocialUploadPage.route(file, _socialBloc!));

    // var fileName = basename(file!.path);
    // var image = imageLib.decodeImage(file.readAsBytesSync());
    // image = imageLib.copyResize(image!, width: 1000);

    // var imagefile = await Navigator.push(
    //   Get.context!,
    //   MaterialPageRoute(
    //     builder: (context) => PhotoFilterSelector(
    //       title: const Text("Photo Filter Example"),
    //       image: image!,
    //       filters: presetFiltersList,
    //       filename: fileName,
    //       loader: const Center(child: CircularProgressIndicator()),
    //       fit: BoxFit.contain,
    //     ),
    //   ),
    // );
    // if (imagefile != null && imagefile.containsKey('image_filtered')) {
    //   filteredImage = imagefile['image_filtered'];
    //  await Navigator.of(Get.context!).push(SocialUploadPage.route(filteredImage, _socialBloc!));
      // await Navigator.push(
      //   Get.context!,
      //   MaterialPageRoute(
      //     builder: (context) => SocialUploadPage(
      //       image: filteredImage,
      //     ),
      //   ),
      // );
    // }
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
        var photos = await albums[0].getAssetListPaged(page: 0, size: 100);
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
