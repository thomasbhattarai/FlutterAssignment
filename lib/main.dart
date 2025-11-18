import 'package:flutter/material.dart';
import 'add.dart';
import 'subtract.dart';
import 'simple_interest.dart';

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
          ],
        ),
      ),
    );
  }
}
