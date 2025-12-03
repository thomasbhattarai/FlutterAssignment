import 'package:flutter/material.dart';
import 'package:flutter_assignment/extra/homepage.dart';
import 'modules/auth/login_screen.dart';
import 'constants/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.login,
      routes: AppRoute.getAppRoutes(),
    );
  }
}
