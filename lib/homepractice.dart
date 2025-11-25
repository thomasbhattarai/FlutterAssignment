import 'package:flutter/material.dart';

class Homepractice extends StatelessWidget {
  const Homepractice({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ['Alice', 'Bob', 'Charlie', 'Diana'];
    return Scaffold(
      appBar: AppBar(title: Text('Home Practice')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: names
            .map(
              (names) =>
                  Container(margin: EdgeInsets.all(10), child: Text(names)),
            )
            .toList(),
      ),
    );
  }
}
