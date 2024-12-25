import 'dart:ui';

import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final bool loaderOnly;
  final double whiteSize;
  final double padding;
  final double stock;
  final Color? color;

  const Loader({
    super.key,
    this.loaderOnly = false,
    this.whiteSize = 100,
    this.padding = 0,
    this.stock = 4,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return loaderOnly
        ? loader(stock, context)
        : Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                  child: Container(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: whiteSize,
                  width: whiteSize,
                  padding: EdgeInsets.all(padding),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: loader(stock, context),
                ),
              ),
            ],
          );
  }

  Center loader(double stock, BuildContext context) {
    var isDark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: CircularProgressIndicator(
        color: color ??
            (isDark ? Theme.of(context).colorScheme.onSecondary : Colors.grey),
        strokeWidth: stock,
        // backgroundColor: MyColor.lightDarkBlue,
      ),
    );
  }
}
