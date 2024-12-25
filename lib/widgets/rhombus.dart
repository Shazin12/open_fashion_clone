import 'dart:math';

import 'package:flutter/material.dart';

class RhombusShape extends StatelessWidget {
  final Color color;
  final double size;
  final Color? border_color;
  const RhombusShape({
    super.key,
    required this.color,
    this.border_color,
    this.size = 6,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0.25 * pi,
      alignment: Alignment.center,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: border_color ?? Colors.transparent,
            width: 1,
          ),
        ),
      ),
    );
  }
}
