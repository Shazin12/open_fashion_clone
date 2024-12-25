import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion_clone/constants/color.dart';
import 'package:open_fashion_clone/provider/theme_pro.dart';
import 'package:provider/provider.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow overflow;
  final int? maxLines;
  final double? wordSpacing;
  final double? letterSpacing;
  final double? height;
  final TextDecoration? decoration;
  final TextDecorationStyle? decorationStyle;
  final EdgeInsetsGeometry padding;
  final String? fontFamily;
  // text2
  final String? text2;
  final String? fontFamily2;
  final double? fontSize2;
  final FontWeight? fontWeight2;
  final Color? color2;
  final TextAlign? textAlign2;
  final TextOverflow? overflow2;
  final int? maxLines2;
  final double? wordSpacing2;
  final double? letterSpacing2;
  final double? height2;
  final TextDecoration? decoration2;
  final TextDecorationStyle? decorationStyle2;
  final Function? onTapText2;
  // point
  final String? point;
  final double? pointSize;
  final FontWeight? pointWeight;
  final Color? pointcolor;
  final bool selectable;
  final Color? decorationColor;

  final String? text3;
  final String? fontFamily3;
  final double? fontSize3;
  final FontWeight? fontWeight3;
  final Color? color3;
  final double? height3;
  final double? wordSpacing3;
  final double? letterSpacing3;
  final TextDecoration? decoration3;
  final TextDecorationStyle? decorationStyle3;
  final Function? onTapText3;

  const AppText(
    this.text, {
    super.key,
    this.fontSize,
    this.decorationStyle,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.selectable = false,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines = 1,
    this.wordSpacing,
    this.letterSpacing,
    this.height,
    this.decoration,
    this.padding = EdgeInsets.zero,
    this.fontFamily,
    this.text2,
    this.fontFamily2,
    this.fontSize2,
    this.fontWeight2,
    this.color2,
    this.textAlign2,
    this.overflow2,
    this.maxLines2,
    this.wordSpacing2,
    this.letterSpacing2,
    this.height2,
    this.decoration2,
    this.decorationStyle2,
    this.onTapText2,
    this.point,
    this.pointSize,
    this.pointWeight,
    this.pointcolor,
    this.decorationColor,
    this.text3,
    this.fontFamily3,
    this.fontSize3,
    this.fontWeight3,
    this.color3,
    this.height3,
    this.wordSpacing3,
    this.letterSpacing3,
    this.decoration3,
    this.decorationStyle3,
    this.onTapText3,
  });

  @override
  Widget build(BuildContext context) {
    var style1 = TextStyle(
      fontFamily: fontFamily ?? context.read<ThemePro>().font,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: height,
      wordSpacing: wordSpacing,
      letterSpacing: letterSpacing,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
    );
    var style2 = TextStyle(
      fontFamily: fontFamily2 ?? fontFamily ?? context.read<ThemePro>().font,
      fontSize: fontSize2 ?? fontSize,
      fontWeight: fontWeight2 ?? fontWeight,
      color: color2 ?? color,
      height: height2 ?? height,
      wordSpacing: wordSpacing2 ?? wordSpacing,
      letterSpacing: letterSpacing2 ?? letterSpacing,
      decoration: decoration2 ?? decoration,
      decorationStyle: decorationStyle2 ?? decorationStyle,
    );
    var style3 = TextStyle(
      fontFamily: fontFamily3 ?? fontFamily ?? context.read<ThemePro>().font,
      fontSize: fontSize3 ?? fontSize,
      fontWeight: fontWeight3 ?? fontWeight,
      color: color3 ?? color,
      height: height3 ?? height,
      wordSpacing: wordSpacing3 ?? wordSpacing,
      letterSpacing: letterSpacing3 ?? letterSpacing,
      decoration: decoration3 ?? decoration,
      decorationStyle: decorationStyle3 ?? decorationStyle,
    );
    Widget textWidget =
        text2 == null ? text1(style1) : widgettext2(style1, style2, style3);
    var child = Padding(
      padding: padding,
      child: point == null
          ? textWidget
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  point!,
                  maxLines: maxLines,
                  overflow: overflow,
                  textScaler: TextScaler.noScaling,
                  style: TextStyle(
                    fontFamily: fontFamily,
                    color: pointcolor ?? color,
                    fontSize: pointSize ?? fontSize,
                    fontWeight: pointWeight ?? fontWeight,
                  ),
                ),
                Expanded(
                  // fit: FlexFit.tight,
                  child: textWidget,
                ),
              ],
            ),
    );

    return child;
  }

  Widget text1(TextStyle style1) {
    return selectable
        ? SelectableText(
            text,
            cursorColor: MyColor.primary,
            textAlign: textAlign,
            // maxLines: maxLines,
            style: style1,
            textScaler: TextScaler.noScaling,
          )
        : Text(
            text,
            overflow: overflow,
            textAlign: textAlign,
            maxLines: maxLines,
            style: style1,
            textScaler: TextScaler.noScaling,
          );
  }

  Widget widgettext2(
    TextStyle style1,
    TextStyle style2,
    TextStyle style3,
  ) {
    return RichText(
      maxLines: maxLines2 ?? maxLines,
      overflow: overflow2 ?? overflow,
      textAlign: textAlign ?? TextAlign.start,
      textScaler: TextScaler.noScaling,
      text: TextSpan(
        text: text,
        style: style1,
        children: [
          TextSpan(
            text: text2,
            style: style2,
            recognizer: onTapText2 == null ? null : TapGestureRecognizer()
              ?..onTap = () {
                onTapText2!();
              },
          ),
          if (text3 != null)
            TextSpan(
              text: text3,
              style: style3,
              recognizer: onTapText3 == null ? null : TapGestureRecognizer()
                ?..onTap = () {
                  onTapText3!();
                },
            ),
        ],
      ),
    );
  }
}
