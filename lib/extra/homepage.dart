import 'package:flutter/material.dart';
import 'package:flutter_assignment/constants/app_text_styles.dart';
import 'package:flutter_assignment/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Home Page',
          style: AppTextStyles.poppinsBold.copyWith(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to the Home Page!',
          style: AppTextStyles.poppinsMedium.copyWith(fontSize: 24),
        ),
      ),
    );
  }
}
