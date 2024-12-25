import 'package:flutter/material.dart';

class CustomElevation extends StatelessWidget {
  const CustomElevation({
    super.key,
    required this.child,
    this.blur = 15,
    required this.color,
    this.shape = BoxShape.circle,
    this.spread = 0,
    this.offset = Offset.zero,
  });
  final Widget child;
  final Color color;
  final double blur;
  final BoxShape shape;
  final double spread;
  final Offset offset;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: shape,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: color,
            blurRadius: blur,
            spreadRadius: spread,
            offset: offset,
          ),
        ],
      ),
      child: child,
    );
  }
}
