import 'package:flutter/material.dart';

class CusMouseCursor extends StatelessWidget {
  const CusMouseCursor({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: child,
    );
  }
}
