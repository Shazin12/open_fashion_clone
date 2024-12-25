import 'package:flutter/material.dart';

class WidgetSizeNotifier extends StatelessWidget {
  final ValueNotifier<Size> notifier = ValueNotifier(const Size(0, 0));
  final Widget Function(BuildContext context, Size size, Widget? child) builder;
  final Widget? child;
  WidgetSizeNotifier({
    super.key,
    required this.builder,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifier.value = context.size ?? const Size(0, 40);
    });
    return ValueListenableBuilder(
      valueListenable: notifier,
      builder: builder,
    );
  }
}
