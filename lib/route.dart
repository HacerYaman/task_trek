import 'package:flutter/material.dart';
import 'package:task_trek/presentation/pages/login_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    const String toLoginAuth = "/toLoginRoute";

    switch (routeSettings.name) {
      case toLoginAuth:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(),
                  body: const Text("there is something wrogn"),
                ));
    }
  }
}
