import 'package:flutter/material.dart';

void showMessageSnackbar(
  BuildContext context,
  String message, {
  Color? color,
}) {
  final snackbar = SnackBar(
    backgroundColor: color,
    content: Text(message),
    behavior: SnackBarBehavior.floating,
  );
  final scaffoldMsg = ScaffoldMessenger.of(context);
  scaffoldMsg
    ..hideCurrentSnackBar()
    ..showSnackBar(snackbar);
}

Future<bool> showConfirmation(
  BuildContext context, {
    String? title,
  required String content,
      showCloseButton = true
}) async {
  bool shouldDismiss = false;
  await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: (title!=null?Text(title):null),
      content: Text(content),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            (showCloseButton?
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Cancel');
                shouldDismiss = false;
              },
              child: const Text("닫기"),
            ):Container()),
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
