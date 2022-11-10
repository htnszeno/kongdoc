import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/app/bloc/app_bloc.dart';

import 'package:hifive/pages/profile/profile.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/repositories/social_repository.dart';

import 'pages.dart';

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

  final List<Widget> _widgetOptions = <Widget>[
    RepositoryProvider(
      create: (_) => SocialRepository(),
      child: BlocProvider<SocialBloc>(
        create: (context) => SocialBloc(
          socialRepository: context.read<SocialRepository>(),
        )..add(const Started()),
        child: const SocialPage(),
      ),
    ),
    const HomePage(),
    // RepositoryProvider(
    //   create: (_) => ExamRepository(),
    //   child: BlocProvider<ExamBloc>(
    //     create: (context) => ExamBloc(
    //       examRepository: context.read<ExamRepository>(),
    //     )..add(Started()),
    //     child: const ExamBlocPage(),
    //   ),
    // ),
    // RepositoryProvider(
    //   create: (_) => ExamRepository(),
    //   child: BlocProvider<ExamCubit>(
    //     create: (context) =>
    //         ExamCubit(context.read<ExamRepository>())..started(),
    //     child: const ExamCubitPage(),
    //   ),
    // ),

    const ShortsPage(),
    const OpenChatPage(),
    const ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_outlined),
            label: '소셜',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.stream_sharp),
          //   label: '샘플Bloc',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.stream_sharp),
          //   label: '샘플Cubit',
          // ),

          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined),
            label: '쇼츠',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: '오픈채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '마이페이지',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        // fixedColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
