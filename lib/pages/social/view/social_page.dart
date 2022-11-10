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
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/repositories/social_repository.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => RepositoryProvider(
        create: (_) => SocialRepository(),
        child: BlocProvider<SocialBloc>(
          create: (context) => SocialBloc(
            socialRepository: context.read<SocialRepository>(),
          )..add(const Started()),
          child: const SocialPage(),
        ),
      ),
    );
  }

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Icon(Icons.menu),
          SizedBox(
            width: 10,
          ),
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
              '반려동물의 함께하는 인생',
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
          // Icon(Icons.dark_mode_outlined),
          // SizedBox(
          //   width: 10,
          // ),
          Icon(Icons.history_sharp),
          SizedBox(
            width: 10,
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
      body: BlocBuilder<SocialBloc, SocialState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.read<SocialBloc>().add(const Started());
                    },
                    child: Text("Cliek"))
              ],
            ),
          );
        },
      ),
    );
  }
}
