import 'package:flutter/material.dart';
import 'package:kongdoc/constants.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.tooltip,
  }) : super(key: key);

  final VoidCallback onPressed;
  final IconData icon;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      tooltip: tooltip,
      splashRadius: kIconButtonSplashRadius,
      onPressed: onPressed,
      icon: Icon(
        icon,
      ),
    );
  }
}
