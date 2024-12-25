import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color.dart';

enum ThemeType { light, dark, auto }

class ThemePro extends ChangeNotifier {
  ThemeType type = ThemeType.light;

  static String? _font = GoogleFonts.tenorSans().fontFamily;

  ThemeMode get model {
    switch (type) {
      case ThemeType.light:
        return ThemeMode.light;
      case ThemeType.dark:
        return ThemeMode.dark;
      case ThemeType.auto:
        return ThemeMode.system;
    }
  }

  String? get font => _font;

  void setFont(String font) {
    _font = font;
    notifyListeners();
  }

  ThemeData get theme {
    switch (type) {
      case ThemeType.light:
        return light;
      case ThemeType.dark:
        return dark;
      case ThemeType.auto:
        var brightness =
            WidgetsBinding.instance.platformDispatcher.platformBrightness;
        bool isDarkMode = brightness == Brightness.dark;
        return isDarkMode ? dark : light;
    }
  }

  ThemeData light = ThemeData(
    primaryColor: MyColor.primary,
    colorScheme: ColorScheme.fromSeed(
      primary: MyColor.primary,
      seedColor: MyColor.primary,
      secondary: MyColor.secondary,
      brightness: Brightness.light,
    ),
    fontFamily: _font,
    brightness: Brightness.light,
    scaffoldBackgroundColor: MyColor.offwhite,
    textTheme: Typography.blackCupertino,
    useMaterial3: true,
  );

  ThemeData dark = ThemeData(
    primaryColor: MyColor.primary,
    colorScheme: ColorScheme.fromSeed(
      primary: MyColor.primary,
      seedColor: MyColor.primary,
      secondary: MyColor.secondary,
      brightness: Brightness.dark,
    ),
    fontFamily: _font,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xff0C0C0C),
    textTheme: Typography.whiteCupertino,
    useMaterial3: true,
  );

  void change(ThemeType type) {
    // if (this.type == type) return;
    // this.type = type;
    // Preference.setTheme(type);
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     systemNavigationBarColor: theme.scaffoldBackgroundColor,
    //     statusBarIconBrightness: theme.brightness == Brightness.dark
    //         ? Brightness.light
    //         : Brightness.dark,
    //   ),
    // );
    // notifyListeners();
  }

  Future<void> init() async {
    // var res = await Preference.getTheme();
    // if (UniversalPlatform.isWeb) {
    //   var context = navigatorKey.currentContext!;
    //   // ignore: use_build_context_synchronously
    //   var type = context.read<LangPro>().type;
    //   if (type == LangType.ar) {
    //     var font = GoogleFonts.alexandria().fontFamily ?? "";
    //     setFont(font);
    //   } else {
    //     var font = GoogleFonts.poppins().fontFamily ?? "";
    //     setFont(font);
    //   }
    // }
    // change(res);
  }

  void platformChange() {
    // if (type != ThemeType.auto) return;
    // printC("T H E M E  P L A T F O R M  C H A N G E D");
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     systemNavigationBarColor: theme.scaffoldBackgroundColor,
    //     statusBarIconBrightness: theme.brightness == Brightness.dark
    //         ? Brightness.light
    //         : Brightness.dark,
    //   ),
    // );
    // notifyListeners();
  }
}

class ThemeObserver extends WidgetsBindingObserver {
  ThemeObserver() {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangePlatformBrightness() {
    // messangerKey.currentContext?.read<ThemePro>().platformChange();
    super.didChangePlatformBrightness();
  }
}
