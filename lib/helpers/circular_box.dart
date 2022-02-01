import 'package:flutter/material.dart';

class CircularBox extends StatelessWidget {
  final Widget icons;
  final Color color;
  const CircularBox({
    Key? key,
    required this.icons,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 40.0, backgroundColor: color, child: icons);
  }
}
