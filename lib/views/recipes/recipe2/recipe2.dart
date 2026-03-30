import 'package:flutter/material.dart';

class Recipe2 extends StatelessWidget {
  const Recipe2({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text('this is the Recipe2 page'),
    );
  }
}
