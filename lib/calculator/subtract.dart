import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SubPage extends StatefulWidget {
  @override
  State<SubPage> createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  final a = TextEditingController();
  final b = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Subtraction")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          TextField(controller: a, decoration: InputDecoration(labelText: "Enter first number")),
          TextField(controller: b, decoration: InputDecoration(labelText: "Enter second number")),
          ElevatedButton(
            child: Text("Calculate"),
            onPressed: () {
              final x = double.parse(a.text);
              final y = double.parse(b.text);
              setState(() => result = "Difference = ${x - y}");
            },
          ),
          Text(result)
        ]),
      ),
    );
  }
}
