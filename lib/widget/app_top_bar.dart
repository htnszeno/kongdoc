import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppTopBar extends StatelessWidget with PreferredSizeWidget {
  const AppTopBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const Icon(Icons.menu),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Kongdoc',
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
          IconButton(
            key: const Key('homePage_logout_iconButton'),
            icon: const Icon(Icons.history_sharp),
            onPressed: () {
              // context.read<ab.AppBloc>().add(ab.AppLogoutRequested());
            },
          ),
          const SizedBox(
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
        ],
      ),
      actions: <Widget>[],
    );
  }
}
