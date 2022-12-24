import 'package:flutter/material.dart';
import 'package:navigation_routing/Utils/routes_names.dart';
import 'package:navigation_routing/home_screen.dart';
import 'package:navigation_routing/screen_three.dart';
import 'package:navigation_routing/screen_two.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: ((context) => const HomeScreen()));

      case RouteName.screenTwo:
        return MaterialPageRoute(
            builder: ((context) => ScreenTwo(data: settings.arguments as Map)));

      case RouteName.screenThree:
        return MaterialPageRoute(
            builder: ((context) =>
                ScreenThree(data: settings.arguments as Map)));

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text("No Route Defined")),
          );
        });
    }
  }
}
