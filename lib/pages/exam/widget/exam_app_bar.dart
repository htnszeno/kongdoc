import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/app/bloc/app_bloc.dart';

class AppSliverAppBar extends StatelessWidget {
  const AppSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 10.0,
          ),
          const Text("샘플페이지"),
          IconButton(
            key: const Key('homePage_logout_iconButton'),
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              context.read<AppBloc>().add(AppLogoutRequested());
            },
          )
        ],
      ),
      floating: true,
    );
  }
}
