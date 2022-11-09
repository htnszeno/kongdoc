import 'package:flutter/material.dart';

class ChattingButton extends StatelessWidget {
  const ChattingButton({super.key, this.photo});

  final String? photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [const Text("ChattingButton")]),
      ),
    );
  }
}
