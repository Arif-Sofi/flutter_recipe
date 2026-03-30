import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecipeBox extends StatelessWidget {
  const RecipeBox({super.key, required this.imageUrl, required this.recipeName, required this.link});

  final String imageUrl;
  final String recipeName;
  final String link;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push(link);
      },

      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 8.0),

        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          // ).borderRadius,
          border: Border.all(
            color: Colors.grey,
            ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 107, 33, 28),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1, 1),
            )
          ]
        ),

        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child:Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: 100,
                height: 150,
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                recipeName,
                textAlign: TextAlign.left,
              ),
            )

          ]
        ),
      )
    );
    
  }
}