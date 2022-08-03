import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class ForwardNavigation extends StatefulWidget {
  final VoidCallback onTap;
  const ForwardNavigation({required this.onTap, Key? key}) : super(key: key);

  @override
  _ForwardNavigationState createState() => _ForwardNavigationState();
}

class _ForwardNavigationState extends State<ForwardNavigation> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: const CircleAvatar(
        radius: 30,
        backgroundColor: ColorManager.teal,
        child: Icon(
          Icons.arrow_forward,
          color: ColorManager.white,
          size: 32,
        ),
      ),
    );
  }
}
