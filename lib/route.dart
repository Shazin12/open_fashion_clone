import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion_clone/screen/home_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyRouter {
  static GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: "/home",
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: "/home",
        builder: (context, state) => HomeScreen(),
      ),
    ],
  );
}

extension GoRouterExtension on GoRouter {
  String location() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    final String location = matchList.uri.toString();
    return location;
  }
}
