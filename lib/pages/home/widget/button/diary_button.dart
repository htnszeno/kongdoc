import 'package:flutter/material.dart';
import 'package:hifive/pages/diary/view/diary_home_page.dart';

class DiaryButton extends StatelessWidget {
  const DiaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(DiaryHomePage.route());
      },
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 0.5),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text("Diary"),
          ),
        ),
      ),
    );
  }
}
