import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hifive/app/bloc/app_bloc.dart';
import 'package:hifive/pages/profile/profile.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/repositories/social_repository.dart';

import '../controller/bottom_nav_controller.dart';

enum PageName { HOME, SEARCH, SHORT, ACTIVITY, MYPAGE }

class MainPage extends GetView<BottomNavController> {
  const MainPage({super.key});
  static Page<void> page() => const MaterialPage<void>(child: MainPage());

  static Route<void> route() {
    return MaterialPageRoute(
        fullscreenDialog: true, builder: (context) => const MainPage());
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.willPopAction,
      child: Obx(
        () => Scaffold(
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              Center(child: Text('MYPAGE')),
              Center(child: Text('MYPAGE')),
              Center(child: Text('MYPAGE')),
              Center(child: Text('MYPAGE')),
              Center(child: Text('MYPAGE')),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
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
            currentIndex: controller.pageIndex.value,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.blueGrey,
            // fixedColor: Colors.white,
            onTap: controller.changeBottomNav,
          ),
        ),
      ),
    );
  }
}
