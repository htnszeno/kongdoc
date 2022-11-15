import 'package:flutter/material.dart';

class ShortsPage extends StatelessWidget {
  const ShortsPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: ShortsPage());

  static Route<void> route() {
    return MaterialPageRoute(
        fullscreenDialog: true,
        builder: (BuildContext context) => ShortsPage());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Shorts page"),
    );
  }
}
