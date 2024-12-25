import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerShimner extends StatelessWidget {
  final double height;
  final double width;
  final BoxShape shape;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry? borderRadius;
  const ContainerShimner({
    super.key,
    this.height = 15,
    this.borderRadius,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.width = 130,
    this.shape = BoxShape.rectangle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      padding: padding,
      constraints: BoxConstraints(maxWidth: width),
      decoration: BoxDecoration(
        shape: shape,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.grey.shade700
            : Colors.grey.shade300,
        borderRadius: shape == BoxShape.circle
            ? null
            : borderRadius ?? BorderRadius.circular(4.r),
      ),
    ).animate(onPlay: (c) => c.loop()).shimmer(duration: 700.ms);
  }
}
