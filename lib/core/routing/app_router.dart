import 'package:flutter/material.dart';
import 'package:goldak/core/presentation/home_view.dart';
import 'package:goldak/core/routing/routes.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (context) => HomeView());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text(' No route definedfor ${setting.name} ')),
          ),
        );
    }
  }
}
