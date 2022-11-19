import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hifive/widget/image_data.dart';
import 'package:photo_manager/photo_manager.dart';

class ImageSelectPage extends StatefulWidget {
  const ImageSelectPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      // fullscreenDialog: true,
      builder: (BuildContext context) => const ImageSelectPage(),
    );
  }

  @override
  State<ImageSelectPage> createState() => _ImageSelectPageState();
}

class _ImageSelectPageState extends State<ImageSelectPage> {
  AssetEntity? selectedImage = AssetEntity(
    id: '0',
    typeInt: 0,
    width: 0,
    height: 0,
  );

  @override
  Widget build(BuildContext context) {
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
            // onTap: controller.gotoimageFilter,
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
        child: Column(children: [
          _imagePreview(),
        ]),
      ),
    );
  }

  Widget _imagePreview() {
    var width = Get.width;
    return Container(
      width: width,
      height: width,
      color: Colors.grey,
      child: _photoWidget(
        selectedImage!,
        width.toInt(),
        builder: (data) {
          return Image.memory(
            data,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }

  Widget _photoWidget(AssetEntity asset, int size,
      {required Widget Function(Uint8List) builder}) {
    return FutureBuilder(
      future:
          asset.thumbnailDataWithSize(ThumbnailSize(size, size), quality: 100),
      builder: (_, AsyncSnapshot<Uint8List?> snapshot) {
        if (snapshot.hasData) {
          return builder(snapshot.data!);
        }
        return Container();
      },
    );
  }
}
