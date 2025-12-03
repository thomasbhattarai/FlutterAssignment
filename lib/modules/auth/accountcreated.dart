import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_assignment/constants/app_text_styles.dart';
import 'package:flutter_assignment/modules/auth/login_screen.dart';

class AccountCreatedScreen extends StatefulWidget {
  const AccountCreatedScreen({super.key});

  @override
  State<AccountCreatedScreen> createState() => _AccountCreatedScreenState();
}

class _AccountCreatedScreenState extends State<AccountCreatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 250, left: 40, right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/created.png', width: 300),
              SizedBox(height: 50),
              Text(
                'Your account sucessfully created!',
                style: AppTextStyles.poppinsMedium.copyWith(fontSize: 15),
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to your Application:Your account is created. ',
                style: AppTextStyles.poppinsRegular.copyWith(fontSize: 11),
              ),

              Text(
                'Unlish the joy of Seamless online experience!',
                style: AppTextStyles.poppinsRegular.copyWith(fontSize: 11),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),

                  minimumSize: Size(double.infinity, 56),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  'Continue',
                  style: AppTextStyles.poppinsSemiBold.copyWith(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
