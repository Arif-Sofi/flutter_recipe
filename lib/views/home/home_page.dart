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
          style: TextTheme.of(context).titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),

        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onPrimary,
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

      drawer: Drawer(
      ),

      body: Center(
        child: Column(

          children: [
            RecipeSection(),
          ]
        )

      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {}, 
        label: const Text('Add Recipe'),
      ),
    );
  }
}