
import 'package:flutter/material.dart';

import '../constants.dart';


class ReusableCard extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final VoidCallback? onPress;
  ReusableCard({this.color, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color ?? kActiveCardColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}