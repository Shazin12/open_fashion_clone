import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:open_fashion_clone/constants/sized_box.dart';
import 'app_text.dart';
import 'mouse_cursor.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.height = 50,
    this.width,
    this.margin,
    this.fontSize = 15,
    this.borderRadius,
    required this.text,
    this.fontColor = Colors.white,
    this.buttonColor,
    required this.onPressed,
    this.fontWeight = FontWeight.normal,
    this.padding,
    this.maxWidth = double.infinity,
    this.border,
    this.align = Alignment.center,
    this.leftChild,
    this.child,
    this.disabled = false,
    this.onDisabled,
    this.fontFamily,
  });
  final double height;
  final double? width;
  final double maxWidth;
  final Widget Function(Widget text)? child;
  final EdgeInsetsGeometry? margin;
  final double fontSize;
  final BorderRadiusGeometry? borderRadius;
  final String text;
  final Color fontColor;
  final FontWeight fontWeight;
  final Color? buttonColor;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;
  final AlignmentGeometry align;
  final Widget? leftChild;
  final bool disabled;
  final VoidCallback? onDisabled;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    var row = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (leftChild != null) leftChild!,
        if (leftChild != null) sizedBoxW10,
        Flexible(
          child: AppText(
            text,
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: fontColor,
            fontFamily: fontFamily,
          ),
        ),
      ],
    );
    return CusMouseCursor(
      child: Opacity(
        opacity: disabled ? 0.4 : 1,
        child: GestureDetector(
          onTap: () {
            if (!disabled) {
              onPressed();
            } else {
              if (onDisabled != null) onDisabled!();
            }
          },
          child: Container(
            height: height,
            width: width,
            constraints: width == null
                ? BoxConstraints(
                    maxWidth: maxWidth,
                  )
                : null,
            padding: padding,
            margin: margin,
            alignment: align,
            decoration: BoxDecoration(
              color: buttonColor ?? Theme.of(context).primaryColor,
              borderRadius: borderRadius,
              border: border,
            ),
            child: child != null ? child!(row) : row,
          ).animate(target: disabled ? 1 : 0).desaturate(),
        ),
      ),
    );
  }
}
