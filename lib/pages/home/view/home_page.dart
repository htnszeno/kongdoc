// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/app/bloc/app_bloc.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static Page<void> page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home.'),
        actions: <Widget>[
          IconButton(
              key: const Key('homePage_logout_iconButton'),
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                context.read<AppBloc>().add(AppLogoutRequested());
              })
        ],
      ),
      body: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Avatar(
                photo:
                    'https://www.princeton.edu/sites/default/files/styles/full_2x/public/images/2022/02/KOA_Nassau_2697x1517.jpg?itok=Hy5eTACi'),
            const SizedBox(height: 4),
            Text('email', style: textTheme.headline6),
            const SizedBox(height: 4),
            Text('user.name', style: textTheme.headline5),
          ],
        ),
      ),
    );
  }
}
