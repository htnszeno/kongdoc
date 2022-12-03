import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hifive/app/view/app.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/request/create_social_request.dart';
import 'package:hifive/pages/social/request/update_social_request.dart';
import 'package:hifive/util/dialogs.dart';
import 'package:hifive/widget/app_text_field.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SocialUploadPage extends StatefulWidget {
  final File image;
  final List<File> images;
  const SocialUploadPage({Key? key, required this.image, required this.images})
      : super(key: key);

  static Route<void> route(
      File image, List<File> images, SocialBloc socialBloc) {
    return MaterialPageRoute(
      builder: (BuildContext context) => BlocProvider.value(
        value: socialBloc,
        child: SocialUploadPage(
          image: image,
          images: images,
        ),
      ),
    );
  }

  @override
  State<SocialUploadPage> createState() => _SocialUploadPageState();
}

class _SocialUploadPageState extends State<SocialUploadPage> {
  late SocialBloc _socialBloc;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _socialBloc = context.read<SocialBloc>();
    return BlocBuilder<SocialBloc, SocialState>(
      builder: (context, state) {
        if (state.status == DataStatus.loading) {
          return const SplashPage();
        }
        final formGroup = _socialBloc.socialFormgroup;

        return Scaffold(
          appBar: AppBar(
            title: Text('새게시물'),
            // actions: [
            //   BlocConsumer<SocialBloc, SocialState>(
            //     listener: (context, state) {
            //       if (state.isProcessing) {
            //         showMessageSnackbar(
            //           context,
            //           "Processing...",
            //         );
            //       } else if (state.status.isSuccess) {
            //         showMessageSnackbar(
            //           context,
            //           state.msg,
            //         );
            //         Navigator.of(context).pop();
            //       } else if (state.status.isError) {
            //         showMessageSnackbar(
            //           context,
            //           state.msg,
            //           color: Colors.red,
            //         );
            //       }
            //     },
            //     builder: (context, state) {
            //       return GestureDetector(
            //         onTap: () {
            //           bool status =
            //               onSave(context, state, formGroup, _socialBloc);
            //           if (status) {
            //             Get.back();
            //             Get.back();
            //           }
            //         },
            //         child: Padding(
            //           padding: EdgeInsets.all(15),
            //           child: ImageData(
            //             IconsPath.uploadComplete,
            //             width: 80,
            //           ),
            //         ),
            //       );
            //     },
            //   )
            // ],
          ),
          floatingActionButton: BlocConsumer<SocialBloc, SocialState>(
            listener: (context, state) {
              if (state.isProcessing) {
                showMessageSnackbar(
                  "Processing...",
                );
              } else if (state.status.isSuccess) {
                showMessageSnackbar(
                  state.msg,
                );
                Navigator.of(context).pop();
              } else if (state.status.isError) {
                showMessageSnackbar(
                  state.msg,
                  color: Colors.red,
                );
              }
            },
            builder: (context, state) {
              return FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                // onPressed: () => onSave(context, state, formGroup, _socialBloc),
                onPressed: () {
                  bool status = onSave(context, state, formGroup, _socialBloc);
                  if (status) {
                    Get.back();
                    Get.back();
                  }
                },
                child: state.isProcessing
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
              );
            },
          ),
          body: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: 0,
                child: GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: SingleChildScrollView(
                      child: ReactiveForm(
                    formGroup: formGroup,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _description(widget.image),
                        // _line,
                        // _infoOnt('사람태그하기'),
                        // _line,
                        // _infoOnt('위치 추가'),
                        // _line,
                        // _infoOnt('다른 미디어에도 게시'),
                        // _snsInfo()
                      ],
                    ),
                  )),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _description(image) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Image.file(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const Expanded(
              child: AppTextField(
            controlName: 'contents',
            hintText: "Write your content here...",
            // controller: controller.textEditingController,
            // maxLines: null,
            // decoration: const InputDecoration(
            //   border: InputBorder.none,
            //   focusedBorder: InputBorder.none,
            //   enabledBorder: InputBorder.none,
            //   errorBorder: InputBorder.none,
            //   disabledBorder: InputBorder.none,
            //   contentPadding: EdgeInsets.only(left: 15),
            //   hintText: '문구 입력 ',
            // ),
            label: '',
          ))
        ],
      ),
    );
  }

  bool onSave(context, SocialState state, formGroup, bloc) {
    FocusScope.of(context).requestFocus(FocusNode());
    if (state.isProcessing) return false;
    if (formGroup.invalid) {
      // This will validate all [isRequired] AppTextField
      formGroup.markAllAsTouched();
      return false;
    }
    final value = formGroup.value;
    if (state.hasSelectedItem) {
      final request = UpdateSocialRequest.fromFromGroup(value);
      bloc.add(Update(request, state.selectedItem!.postId));
    } else {
      final request = CreateSocialRequest.fromFromGroup(value);
      bloc.add(Create(request, widget.images));
    }
    return true;
  }
}
