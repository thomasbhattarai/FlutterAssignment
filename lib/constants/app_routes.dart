import 'package:flutter/material.dart';
import 'package:flutter_assignment/modules/auth/login_screen.dart';
import 'package:flutter_assignment/modules/home/bottom_navigation.dart';
import 'modules/auth/login_screen.dart';
import 'package:flutter_assignment/extra/homepage.dart';
import '../modules/extra/home_page.dart';

class AppRoute {
  AppRoute._();
  static const String login = '/login';
  static const String home = '/home';
  static const String signup = '/signup';
  static const String bottomNavigation = '/bottomNavigation';

  static getAppRoutes() => {
    home: (context) => const HomePage(),
    login: (context) => const LoginScreen(),
    bottomNavigation: (context) => const BottomNavigation(),
  };
}
