import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/pages/home/widget/button/calendar_button.dart';
import 'package:hifive/pages/home/widget/button/chatting_button.dart';
import 'package:hifive/pages/home/widget/button/diary_button.dart';
import 'package:hifive/pages/home/widget/button/grooming_button.dart';
import 'package:hifive/pages/home/widget/button/health_button.dart';
import 'package:hifive/pages/home/widget/button/social_button.dart';
import 'package:hifive/pages/home/widget/button/walking_button.dart';
import 'package:hifive/pages/home/widget/button/wearable_button.dart';
import 'package:hifive/pages/home/widget/weather_board.dart';
import 'package:hifive/util/colors.dart';

class FunctionBoard extends StatefulWidget {
  const FunctionBoard({super.key, this.photo});

  final String? photo;

  @override
  State<FunctionBoard> createState() => _FunctionBoardState();
}

class _FunctionBoardState extends State<FunctionBoard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget toList(int index) {
    List<Widget> list = [
      const SocialButton(),
      const HealthButton(),
      const GroomingButton(),
      const CalendarButton(),
      const WearableButton(),
      const DiaryButton(),
      const WalkingButton(),
      const ChattingButton()
    ];
    return list[index];
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 2.7,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return toList(index);
        },
        childCount: 8,
      ),
    );
  }
}
