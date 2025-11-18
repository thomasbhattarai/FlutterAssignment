import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final a = TextEditingController();
  final b = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Addition")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: a,
              decoration: InputDecoration(labelText: "Enter first number"),
            ),
            TextField(
              controller: b,
              decoration: InputDecoration(labelText: "Enter second number"),
            ),
            ElevatedButton(
              child: Text("Calculate"),
              onPressed: () {
                final x = double.parse(a.text);
                final y = double.parse(b.text);
                setState(() => result = "Sum = ${x + y}");
              },
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}
