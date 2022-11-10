import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/util/colors.dart';

class CharacterBoard extends StatefulWidget {
  const CharacterBoard({super.key, this.photo});

  final String? photo;

  @override
  State<CharacterBoard> createState() => _CharacterBoardState();
}

class _CharacterBoardState extends State<CharacterBoard> {
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
    return Container(
      // alignment: Alignment.center,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text("Character Board"),
        ),
      ),
    );
  }
}
