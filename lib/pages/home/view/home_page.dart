import 'package:badges/badges.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hifive/app/bloc/app_bloc.dart';
import 'package:hifive/pages/home/widget/avatar.dart';
import 'package:hifive/pages/home/widget/bill_board.dart';
import 'package:hifive/pages/home/widget/character_board.dart';
import 'package:hifive/pages/home/widget/function_board.dart';
import 'package:hifive/pages/home/widget/score_board.dart';
import 'package:hifive/pages/home/widget/weather_board.dart';
import 'package:hifive/pages/note/view/note_home_page.dart';
import 'package:hifive/widget/app_top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: HomePage());

  static Route<void> route() {
    return MaterialPageRoute(
        fullscreenDialog: true, builder: (context) => HomePage());
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return Scaffold(
      appBar: const AppTopBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Expanded(
              child: CustomScrollView(
                slivers: [
                  // SliverAppBar(
                  //   title: Text("Title"),
                  //   pinned: true,
                  // ),
                  SliverToBoxAdapter(child: ScoreBoard()),
                  SliverPadding(padding: EdgeInsets.all(5)),
                  SliverToBoxAdapter(child: CharacterBoard()),
                  SliverPadding(padding: EdgeInsets.all(5)),
                  SliverToBoxAdapter(child: WeatherBoard()),
                  SliverPadding(padding: EdgeInsets.all(5)),
                  FunctionBoard(),
                  SliverPadding(padding: EdgeInsets.all(5)),
                  // SliverToBoxAdapter(child: BillBoard()),
                  // SliverFillRemaining(
                  //   // hasScrollBody: false,
                  //   child: Align(
                  //       alignment: Alignment.bottomCenter, child: BillBoard()),
                  // )
                ],
              ),
            ),
            BillBoard()
          ],
        ),
      ),
      // body: const Padding(
      //   padding: EdgeInsets.all(20.0),
      //   child: CustomScrollView(
      //     slivers: [
      //       SliverToBoxAdapter(child: ScoreBoard()),
      //       SliverPadding(padding: EdgeInsets.all(5)),
      //       SliverToBoxAdapter(child: CharacterBoard()),
      //       SliverPadding(padding: EdgeInsets.all(5)),
      //       SliverToBoxAdapter(child: WeatherBoard()),
      //       SliverPadding(padding: EdgeInsets.all(5)),
      //       FunctionBoard(),
      //       SliverPadding(padding: EdgeInsets.all(5)),
      //       // SliverToBoxAdapter(child: BillBoard()),
      //       SliverFillRemaining(
      //         // hasScrollBody: false,
      //         child:
      //             Align(alignment: Alignment.bottomCenter, child: BillBoard()),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
