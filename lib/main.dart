import 'package:flutter/material.dart';
import 'add.dart';
import 'subtract.dart';
import 'simple_interest.dart';
import 'idcard.dart';
import 'homepractice.dart';
import 'login_screen.dart';
import 'screens/welcome_screen.dart';
import 'widget/custom_scaffold.dart';
import 'app_text_styles.dart';

void main() {
  runApp(MaterialApp(home: Home(), debugShowCheckedModeBanner: false));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Addition"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => AddPage()),
              ),
            ),
            ElevatedButton(
              child: Text("Subtraction"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SubPage()),
              ),
            ),
            ElevatedButton(
              child: Text("Simple Interest"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SimpleInterestPage()),
              ),
            ),

            ElevatedButton(
              child: Text("ID Card"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => IdentityCard()),
              ),
            ),

            ElevatedButton(
              child: Text("Welcome Screen"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => WelcomeScreen()),
              ),
            ),
            ElevatedButton(
              child: Text("Home Practice"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Homepractice()),
              ),
            ),
            ElevatedButton(
              child: Text("Login"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => LoginScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
