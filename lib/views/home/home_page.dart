import 'package:flutter/material.dart';
import '../home/widgets/recipe_section.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  Text(
          title,
          ),

        backgroundColor: Theme.of(context).colorScheme.primary,

        titleTextStyle: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
        ),

        shape: Border(
          bottom: BorderSide(
            color: const Color.fromARGB(255, 124, 42, 36),
            width: 2.0,
          ),
        ),

        shadowColor: Colors.black,
        elevation: 10.0,
      ),

      body: Center(
        child: Column(

          children: [
            RecipeSection(),

            Text('hello'),
          ]
        )

      ),
    );
  }
}