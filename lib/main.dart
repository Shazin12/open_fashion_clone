import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion_clone/constants/string.dart';
import 'package:open_fashion_clone/provider/theme_pro.dart';
import 'package:open_fashion_clone/route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemePro())],
      child: const MyApp(),
    ),
  );
}

final messangerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      ensureScreenSize: true,
      designSize: const Size(400, 900),
      builder: (context, w) {
        return Consumer<ThemePro>(
          builder: (_, v, w) {
            return MaterialApp.router(
              title: MyString.appTitle,
              scaffoldMessengerKey: messangerKey,
              routerConfig: MyRouter.router,
              theme: v.theme,
              darkTheme: v.dark,
              themeMode: v.model,
              debugShowCheckedModeBanner: false,
            );
          },
        );
      },
    );
  }
}

extension DoubleExtensions on num {
  double get hMin {
    return (h > this ? this : h).toDouble();
  }

  double get wMin {
    return (w > this ? this : w).toDouble();
  }

  double get dgMin {
    return (dg > this ? this : dg).toDouble();
  }

  double get dmMin {
    return (dm > this ? this : dm).toDouble();
  }
}
