import 'package:flutter/material.dart';
import 'package:hifive/pages/shorts/view/shorts_page.dart';

class ScoreBoard extends StatefulWidget {
  const ScoreBoard({super.key, this.photo});

  final String? photo;

  @override
  State<ScoreBoard> createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
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
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: ElevatedButton(
            child: Text("Score Board"),
            onPressed: () {
              // ShortsPage.route()
              // MaterialPageRoute(
              //   fullscreenDialog: true,
              //   builder: (BuildContext context) => ShortsPage(),
              // )
            Navigator.of(context).push(ShortsPage.route());
            },
          ),
        ),
      ),
    );
  }
}
