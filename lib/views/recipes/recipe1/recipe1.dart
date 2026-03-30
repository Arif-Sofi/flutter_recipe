import 'package:flutter/material.dart';

class Recipe1 extends StatelessWidget {
  const Recipe1({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),

        shape: Border(
          bottom: BorderSide(
            color: const Color.fromARGB(255, 124, 42, 36),
            width: 2.0,
          ),
        ),

        shadowColor: Colors.black,
        elevation: 10.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          children: [
            ImageSection(imageUrl: 'image/greencurry.png'),

            TitleSection(title: title),

            IngredientsBox(ingredients: 'Ingredients')
          ],
        ),
      ),
      
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      
      child: Image.asset(
        imageUrl,
        width: 600,
        height: 240,
        fit: BoxFit.cover,
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection ({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            // textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: TextTheme.of(context).titleLarge?.fontSize,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}

class IngredientsBox extends StatelessWidget{
  const IngredientsBox({super.key, required this.ingredients});

  final String ingredients;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.lightGreen,

      child: Column(
        children: [
          Text(
            ingredients
          ),
        ],
      ),
    );
  }
}
