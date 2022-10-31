import 'package:badges/badges.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hifive/app/bloc/app_bloc.dart';
import 'package:hifive/pages/home/widget/avatar.dart';
import 'package:hifive/pages/note/view/note_home_page.dart';

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
      appBar: AppBar(
        title: Row(children: [
          const Text(
            'HiFive',
            style: TextStyle(
                fontFamily: 'Jalnan',
                fontWeight: FontWeight.bold,
                fontSize: 23),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5.0, top: 7),
            child: Text(
              '사람과 반려동물의 삶을 기록하세요.',
              style: TextStyle(
                  fontFamily: 'Jalnan',
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Badge(
              padding: const EdgeInsets.all(6),
              badgeContent: const Text(
                '3',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              // ignore: sort_child_properties_last
              child: const Icon(
                FontAwesomeIcons.bell,
                size: 20,
              ),
              badgeColor: Colors.red),
        ]),
        actions: <Widget>[],
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                '사람과 반려동물의 삶을 기록하세요.',
                style: TextStyle(
                    fontFamily: 'Jalnan',
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '사람과 반려동물의 삶을 기록하세요.',
                style: TextStyle(
                  fontFamily: 'GmarketSansTTF',
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '사람과 반려동물의 삶을 기록하세요.',
                style: TextStyle(
                  fontFamily: 'GmarketSansTTF',
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ]),
      ),
    );
  }
}
