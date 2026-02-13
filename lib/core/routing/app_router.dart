import 'package:flutter/material.dart';
import 'package:goldak/features/home/presentation/home_view.dart';
import 'package:goldak/core/routing/routes.dart';
import 'package:goldak/features/gold/presentation/views/gold_view.dart';
import 'package:goldak/features/silver/presentation/views/silver_view.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (context) => HomeView());

      case Routes.gold:
        return MaterialPageRoute(builder: (context) => GoldView());

       case Routes.silver:
        return MaterialPageRoute(builder: (context) => SilverView());  

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text(' No route definedfor ${setting.name} ')),
          ),
        );
    }
  }
}