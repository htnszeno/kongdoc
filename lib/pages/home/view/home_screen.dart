import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kongdoc/pages/home/view/home_theme.dart';

import 'package:kongdoc/pages/home/widget/home_diary_screen.dart';
import 'package:flutter/material.dart';
import 'package:kongdoc/widget/blank_content.dart';

import '../../../models/tabIcon_data.dart';
import '../../../repositories/home_repository.dart';
import '../bloc/home_bloc.dart';
import '../widget/bottom_bar_view.dart';
import '../widget/training_chart_screen.dart';
import '../widget/training_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  static Route<void> route() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => RepositoryProvider(
        create: (_) => HomeRepository(),
        child: BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(
            homeRepository: context.read<HomeRepository>(),
          )..add(const Started()),
          child: const HomeScreen(),
        ),
      ),
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with TickerProviderStateMixin {

  AnimationController? animationController;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: HomeTheme.background,
  );

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    tabBody = HomeDiaryScreen(animationController: animationController);
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HomeTheme.background,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: RefreshIndicator(
          onRefresh: () async {
            context.read<HomeBloc>().add(const Refresh());
          },
          child: BlocConsumer<HomeBloc, HomeState> (
            listener: (_, __) {},
            builder: (context, state) {
              if (state.status.isLoading) {
                return BlankContent(
                  isLoading: true,
                );
              }else{
                return Stack(
                    children: <Widget>[
                      tabBody,
                      bottomBar(),
                      ]
                );
              }

            }
          ),
          // child: FutureBuilder<bool>(
          //   future: getData(),
          //   builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          //     if (!snapshot.hasData) {
          //       return const SizedBox();
          //     } else {
          //       return Stack(
          //         children: <Widget>[
          //           tabBody,
          //           bottomBar(),
          //         ],
          //       );
          //     }
          //   },
          // ),
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            if (index == 0 || index == 2) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      HomeDiaryScreen(animationController: animationController);
                });
              });
            } else if (index == 1) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      TrainingChartScreen();
                });
              });
            } else if (index == 3) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      TrainingScreen(animationController: animationController);
                });
              });
            }
          },
        ),
      ],
    );
  }

}
