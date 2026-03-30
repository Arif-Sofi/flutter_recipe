import 'package:flutter/material.dart';

class Recipe1 extends StatelessWidget {
  const Recipe1({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text('this is the Recipe1 page'),
    );
  }
}
