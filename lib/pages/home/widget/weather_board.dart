import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/util/colors.dart';

class WeatherBoard extends StatefulWidget {
  const WeatherBoard({super.key, this.photo});

  final String? photo;

  @override
  State<WeatherBoard> createState() => _WeatherBoardState();
}

class _WeatherBoardState extends State<WeatherBoard> {
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
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [const Text("WeatherBoard")]),
      ),
    );
  }
}
