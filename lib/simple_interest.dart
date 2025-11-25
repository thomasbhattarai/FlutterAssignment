import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SimpleInterestPage extends StatefulWidget {
  @override
  State<SimpleInterestPage> createState() => _SimpleInterestPageState();
}

class _SimpleInterestPageState extends State<SimpleInterestPage> {
  final p = TextEditingController();
  final t = TextEditingController();
  final r = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Interest")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          TextField(controller: p, decoration: InputDecoration(labelText: "Principal")),
          TextField(controller: t, decoration: InputDecoration(labelText: "Time")),
          TextField(controller: r, decoration: InputDecoration(labelText: "Rate")),
          ElevatedButton(
            child: Text("Calculate"),
            onPressed: () {
              final P = double.parse(p.text);
              final T = double.parse(t.text);
              final R = double.parse(r.text);
              final si = (P * T * R) / 100;
              setState(() => result = "Simple Interest = $si");
            },
          ),
          Text(result)
        ]),
      ),
    );
  }
}
