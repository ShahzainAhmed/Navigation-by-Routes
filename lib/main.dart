import 'package:flutter/material.dart';

import 'Utils/routes.dart';
import 'utils/routes_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
