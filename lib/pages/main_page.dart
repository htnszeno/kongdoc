import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kongdoc/app/bloc/app_bloc.dart';
import 'package:kongdoc/pages/profile/profile.dart';

import 'pages.dart';

enum PageName { HOME, ACTIVITY, HEALTH, MYPAGE }

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: MainPage());

  static Route<void> route() {
    return MaterialPageRoute(
        fullscreenDialog: true, builder: (context) => const MainPage());
  }

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index, {bool hasGesture = true}) {
    var page = PageName.values[index];
    if (page == PageName.HOME) {
      Navigator.of(context).push(HomePage.route());
      return;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return HomePage();
  }
}
