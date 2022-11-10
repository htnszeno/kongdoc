import 'package:flutter/material.dart';

class BillBoard extends StatelessWidget {
  const BillBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text("광고"),
        ),
      ),
    );
  }
}
