import 'package:flutter/material.dart';
import '../../sharedwidgets/bulletpoint.dart';

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
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }
}

class IngredientsBox extends StatelessWidget{
  IngredientsBox({super.key, required this.ingredients});

  final _formKey = GlobalKey<FormState>();
  final String ingredients;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.lightGreen,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ingredients,
            style: TextStyle(
              fontSize: TextTheme.of(context).titleLarge?.fontSize,
            )
          ),
          
          UnorderedList(
            [
              'coconut milk',
              'carrots',
              'onions',
              'garlic',
              'green curry paste',
              'asparagus',
              'cilantro',
              ]
          ),

          ElevatedButton(
            onPressed: () async {
              await showDialog<void>(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: Stack(
                          clipBehavior: Clip.none,
                          children: <Widget>[
                            Positioned(
                              right: -40,
                              top: -40,
                              child: InkResponse(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Icon(Icons.close),
                                ),
                              ),
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: TextFormField(),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: TextFormField(),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: ElevatedButton(
                                      child: const Text('Submitß'),
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          _formKey.currentState!.save();
                                        }
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ));
            },
            child: const Text('Open Popup'),
          ),
        ],
      ),
    );
  }
}


