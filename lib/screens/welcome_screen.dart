import 'package:flutter/material.dart';
import 'package:flutter_assignment/widget/custom_scaffold.dart';
import 'package:flutter_assignment/widget/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'welcome back!\n',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text:
                            '\n Enter your personal details to login to the page',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(child: WelcomeButton(ButtonText: 'sign in')),
                  Expanded(child: WelcomeButton(ButtonText: 'sign up')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
