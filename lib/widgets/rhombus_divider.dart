// ignore_for_file: deprecated_member_use

import 'rhombus.dart';

import 'package:flutter/material.dart';
import 'package:open_fashion_clone/constants/color.dart';

class RhombusDivider extends StatelessWidget {
  final double width;
  const RhombusDivider({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Transform.scale(
          scaleX: 0.8,
          child: Container(
            color: MyColor.label.withOpacity(0.4),
            height: 1,
            width: width,
          ),
        ),
        RhombusShape(
          size: 9,
          color: Theme.of(context).scaffoldBackgroundColor,
          border_color: MyColor.label.withOpacity(0.4),
        )
      ],
    );
  }
}
