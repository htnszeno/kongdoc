import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void showMessageSnackbar(
  String message, {
  Color? color,
}) {
  final snackbar = SnackBar(
    duration: const Duration(milliseconds: 1000),
    backgroundColor: color,
    content: Text(message),
    behavior: SnackBarBehavior.floating,
  );
  final scaffoldMsg = ScaffoldMessenger.of(Get.context!);
  scaffoldMsg
    ..hideCurrentSnackBar()
    ..showSnackBar(snackbar);
}

Future<bool> showConfirmation(
    {String? title, required String content, showCloseButton = true}) async {
  bool shouldDismiss = false;
  await showDialog(
    context: Get.context!,
    builder: (context) => AlertDialog(
      // insetPadding: EdgeInsets.symmetric(horizontal: 110),
      // contentPadding: EdgeInsets.zero,
      // clipBehavior: Clip.antiAliasWithSaveLayer,
      title: (title != null ? Text(title) : null),
      content: Container(width: Get.width, child: Text(content)),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            (showCloseButton
                ? TextButton(
                    onPressed: () {
                      Navigator.pop(context, 'Cancel');
                      shouldDismiss = false;
                    },
                    child: const Text("닫기"),
                  )
                : const SizedBox.shrink()),
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Delete');
                shouldDismiss = true;
              },
              child: const Text("확인"),
            ),
          ],
        )
      ],
    ),
  );
  return shouldDismiss;
}
