import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hifive/pages/photo/bloc/photo_bloc.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/widget/image_data.dart';
import 'package:photo_manager/photo_manager.dart';

class ImageSelectPage extends StatefulWidget {
  const ImageSelectPage({super.key});

  static Route<void> route(SocialBloc socialBloc) {
    return MaterialPageRoute(
      // fullscreenDialog: true,
      builder: (BuildContext context) => BlocProvider<PhotoBloc>(
        create: (context) => PhotoBloc()
          ..add( SetSocialBloc(socialBloc))
          ..add(const AlbumsLoaded()),
        child: const ImageSelectPage(),
      ),
    );
  }

  @override
  State<ImageSelectPage> createState() => _ImageSelectPageState();
}

class _ImageSelectPageState extends State<ImageSelectPage> {
  late PhotoBloc _photoBloc;

  @override
  Widget build(BuildContext context) {
    _photoBloc = context.read<PhotoBloc>();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            onTap: Get.back,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ImageData(IconsPath.closeImage),
            ),
          ),
          title: const Text(
            '새 게시물',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          actions: [
            GestureDetector(
              onTap:()=> context.read<PhotoBloc>().add(const SetImageFilter()),
              child: Padding(
                padding: EdgeInsets.only(right: 15),
                child: ImageData(
                  IconsPath.nextImage,
                  width: 90,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: BlocBuilder<PhotoBloc, PhotoState>(
            buildWhen: (previous, current) {
              return previous.albums != current.albums;
            },
            builder: (context, state) {
              if (state.hasAlbums) {
                return Column(children: [
                  _imagePreview(),
                  _header(),
                  _imageSelectList(),
                ]);
              }

              return const CircularProgressIndicator(
                color: Colors.white,
              );
            },
          ),
        ));
  }

  Widget _imageSelectList() {
    return BlocBuilder<PhotoBloc, PhotoState>(
      buildWhen: (previous, current) {
        return previous.selectedAlbumPhotos != current.selectedAlbumPhotos;
      },
      builder: (context, state) {
        final selectedAlbumPhotos =
            context.select((PhotoBloc bloc) => bloc.state.selectedAlbumPhotos);

        return GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              childAspectRatio: 1),
          itemCount: selectedAlbumPhotos.length,
          itemBuilder: (BuildContext context, int index) {
            return _photoWidget(selectedAlbumPhotos[index], 200,
                builder: (data) {
              return GestureDetector(
                onTap: () {
                  // controller.changeSelectedImage(controller.selectedAlbumPhotos[index]);
                  context
                      .read<PhotoBloc>()
                      .add(SetSelectedImage(selectedAlbumPhotos[index]));
                },
                child: BlocBuilder<PhotoBloc, PhotoState>(
                  builder: (context, state) {
                    final AssetEntity selectedImage = context
                        .select((PhotoBloc bloc) => bloc.state.selectedImage!);
                    return Opacity(
                      opacity:
                          selectedAlbumPhotos[index] == selectedImage ? 0.5 : 1,
                      child: Image.memory(
                        data,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              );
            });
          },
        );
      },
    );
  }

  Widget _header() {
    return BlocBuilder<PhotoBloc, PhotoState>(
      builder: (context, state) {
        final albums = context.select((PhotoBloc bloc) => bloc.state.albums);
        final selectedAlbum =
            context.select((PhotoBloc bloc) => bloc.state.selectedAlbum);

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: Get.context!,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                    isScrollControlled: true,
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(Get.context!).size.height -
                            MediaQuery.of(Get.context!).padding.top),
                    builder: (_) => Container(
                      height: 400,
                      // height: albums.length > 10
                      //     ? Size.infinite.height
                      //     : albums.length * 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              margin: const EdgeInsets.only(top: 7),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black54),
                              width: 40,
                              height: 4,
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: List.generate(
                                  albums.length,
                                  (index) => GestureDetector(
                                    onTap: () {
                                      context.read<PhotoBloc>().add(SetSelectedAlbum(albums[index]));
                                      Get.back();
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 20),
                                      child: Text(albums[index].name),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(children: [
                    Text(
                      selectedAlbum!.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down)
                  ]),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xff808080),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(children: [
                      ImageData(IconsPath.imageSelectIcon),
                      const Text(
                        '여러항목선택',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ]),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff808080),
                    ),
                    child: ImageData(IconsPath.cameraIcon),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Widget _imagePreview() {
    var width = Get.width;
    return BlocBuilder<PhotoBloc, PhotoState>(
      builder: (context, state) {
        final AssetEntity selectedImage =
            context.select((PhotoBloc bloc) => bloc.state.selectedImage!);

        return Container(
          width: width,
          height: width,
          color: Colors.grey,
          child: _photoWidget(
            selectedImage,
            width.toInt(),
            builder: (data) {
              return Image.memory(
                data,
                fit: BoxFit.cover,
              );
            },
          ),
        );
      },
    );
  }

  Widget _photoWidget(AssetEntity asset, int size,
      {required Widget Function(Uint8List) builder}) {
    var width = Get.width;
    return FutureBuilder(
      future:
          asset.thumbnailDataWithSize(ThumbnailSize(size, size), quality: 100),
      builder: (_, AsyncSnapshot<Uint8List?> snapshot) {
        if (snapshot.hasData) {
          return builder(snapshot.data!);
        }
        return Container(
          width: width,
          height: width,
        );
      },
    );
  }
}
