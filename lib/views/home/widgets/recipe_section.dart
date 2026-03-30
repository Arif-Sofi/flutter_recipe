import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/recipe_box.dart';

class RecipeSection extends StatelessWidget {
  const RecipeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              context.push('/recipe1');
            },

            child: RecipeBox(
              imageUrl: 'image/greencurry.png',
              recipeName: 'Thai Green Curry',
            ),
          ),

          RecipeBox(
            imageUrl: 'image/raspberrycake.jpg',
            recipeName: 'Raspberry Chocolate Tart',
          )
        ],
      ),
    );
  }
}