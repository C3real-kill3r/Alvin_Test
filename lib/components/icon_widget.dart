import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppIcons extends StatefulWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;
  const AppIcons({
    Key? key,
    required this.icon,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  _AppIconsState createState() => _AppIconsState();
}

class _AppIconsState extends State<AppIcons> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(
        widget.icon,
        color: widget.color,
      ),
      onPressed: widget.onPressed,
    );
  }
}
