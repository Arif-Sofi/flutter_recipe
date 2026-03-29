import 'package:flutter/material.dart';
import '../views/home/home_page.dart';

void main() => runApp(const MyApp());

//recipe app
// /*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Recipe Box';

    return MaterialApp(
      title: 'Recipe Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 101, 150, 64),
        ),
      ),
      home: const MyHomePage(title: appTitle),
    );
  }
}

// */

//layout demo
/*

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    const String description = 
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it'
      'is one of the larger Alpine Lakes. A gondola ride from '
      'Kandersteg, followed by a half-hour walk through pastures '
      'and pine forest, leads you to the lake, which warms to 20 '
      'degrees Celsius in the summer. Activities enjoyed here '
      'include rowing, and riding the summer toboggan run.';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            appTitle,
          )
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(imageUrl: 'image/lake.jpg'),

              TitleSection(
                name: 'Oeschinen Lake Campground', 
                location: 'Kandersteg, Switzerland',
              ),

              ButtonSection(),

              TextSection(description: description),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          //Expanded to use all remaining free space in the row to stretch the Column Widget
          Expanded(
            child: Column(
              //to place Column at the start of the row
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style:
                      const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  location,
                  style:
                    TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),
          FavoriteWidget(),
          // Icon(Icons.star, color: Colors.red[500]),
          // Container(
          //   padding: const EdgeInsets.only(left: 16, right: 32),
          //   child: const Text('41'),
          // )
        ],
      )
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context){
    final Color color = Theme.of(context).primaryColor;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(icon: Icons.call, label: 'CALL', color: color),
          ButtonWithText(icon: Icons.near_me, label: 'ROUTE', color: color),
          ButtonWithText(icon: Icons.share, label: 'SHARE', color: color),
        ],
      )
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key, 
    required this.icon, 
    required this.label, 
    required this.color});

    //IconData because we will pass it in Icon widget
    final IconData icon;
    final String label;
    final Color color;

    @override
    Widget build(BuildContext context){
      return Column(
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),

          Text(label),
        ],
      );
    }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        description,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context){
    return Image.asset(
      imageUrl,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState((){
      if (_isFavorited){
        _favoriteCount -= 1;
        _isFavorited = false;
      }
      else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisSize: MainAxisSize.min,

      children: [
        Container(
          padding: const EdgeInsets.all(0),

          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,

            icon: (_isFavorited 
              ? const Icon(Icons.star)
              : const Icon(Icons.star_border)
            ),

            color: Colors.red[500],

            onPressed: _toggleFavorite,
          ),
        ),

        SizedBox(
          width: 18,
          // child: Text('$_favoriteCount'),
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}

*/

/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //MaterialApp sets up the "rules" and "tools" that every other widget will use.
    //MaterialApp almost always used once. defines routes, title, theme, localization(language)
    return MaterialApp( 
      title: 'Recipe Application',
      theme: ThemeData(
        // This is the theme of your application.
        //usually has colorScheme, textTheme
        colorScheme: .fromSeed(
          seedColor: Colors.amber,
          brightness: Brightness.light,
          ),
        
        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          
        )
      ),
      home: const MyHomePage(title: 'recipe box'),
    );
  }
}

class CounterIncrementor extends StatelessWidget {
  const CounterIncrementor({required this.onPressed, super.key});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context){
    return FloatingActionButton(
      onPressed: onPressed, 
      tooltip: 'increment',
      child: const Icon(Icons.add), 
      );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int currentPageIndex = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _resetCounter() {
    setState((){
      _counter = 0;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    //Scaffold is used everytime a new page is created.
    //the page's build method always returns a Scaffold.
    //Scaffold usually has 3 slots: appBar, body, and floatingActionButton
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.amber, // Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),

        //leading is a single widget on the left, default is back button

        //actions are list of widgets on the right side
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>
              (builder: (context) => const SettingsPage()),
            );
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const SettingsPage()),
            // );
          }, icon: const Icon(Icons.settings),),
        ],

      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          alignment: Alignment.center,
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.

          // mainAxisAlignment: .center,//centers on the MainAxis (here is the vertical line)
          // children: [
            child: Column(
              // crossAxisAlignment: .center,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Image(
                          image: const NetworkImage('https://cookieandkate.com/images/2015/03/thai-green-curry-recipe-0.jpg'),
                          height:250,
                          width: 250,
                        ),
                      ),
                      // Flexible(
                        // child: 
                        const Text(
                          'Thai Green Curry'),
                      // )
                    ]
                  )
                ),

                Container(alignment: Alignment.center,
                  child:Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Image(
                        image: const NetworkImage(
                          'http://www.bakerita.com/wp-content/uploads/2015/06/No-Bake-Raspberry-Chocolate-Truffle-Tart-Paleo-11.jpg'),

                        height:250,
                        width: 250,
                      )
                    ),
                    // Flexible(
                    //   child: const 
                      Text('Raspberry Chocolate Tart'),
                    // )
                    
                  ]
                )
                )
                
              ]
            )

            /* const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            TextButton(
              onPressed: _resetCounter,
              child: const Text('Reset Counter'),
            ), */

          // ],
        ),
      ),

      drawer: Drawer(
        child:ListView(
          // mainAxisAlignment: .center,
          children: [
            const DrawerHeader(child: Text('Drawer Header')),

            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
          ],
        )
      ),
      
      floatingActionButton: Row(
        //moves the row to the right end of the screen
        mainAxisAlignment: MainAxisAlignment.end, 
        //tells the Row widget "Only be as wide as the buttons inside you" rather than "Stretch across the whole screen"
        mainAxisSize: MainAxisSize.min, 
        children: [
          Padding(
            //padding needs edgeInsets eg. edgeInsets.all, edgeInsets.only, edgeInsets.symmetric
            padding: const EdgeInsets.only(right: 10.0), 
            child: FilledButton(
              onPressed: _resetCounter,
              child: const Text('Reset Counter'),
            ),
          ),
          
            // SizedBox(width: 10), easier than padding

          CounterIncrementor(onPressed: _incrementCounter),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        // onDestinationSelected: (int index) {
        //   setState(() {
        //     currentPageIndex = index;
        //   });
        // },

        // indicatorColor: Colors.green,
        // selectedIndex: currentPageIndex,
        // destinations: const<Widget>[
        //   NavigationDestination(
        //     selectedIcon: Icon(Icons.home),
        //     icon: Icon(Icons.home_outlined),
        //     label:'Home'
        //     ),
        //   NavigationDestination(
        //     icon: Icon(Icons.settings),
        //     label: 'Settings'
        //     ),
        // ],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'Home'),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings), 
            label: 'Settings',
          ),
            
        ],
      )
      
    );
  }
}



class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context){
    //Scaffold is used everytime a new page is created.
    //the page's build method always returns a Scaffold.
    //Scaffold usually has 3 slots: appBar, body, and floatingActionButton
    //also has drawer, bottomNavigationBar, backgroundColor, bottomSheet, persistentFooterButtons, etc.
    return Scaffold(
      //appbar has 
      //title, actions, leading ,backgroundColor, elevation, centerTitle.
      appBar: AppBar(
        title: const Text('Settings Page'),
      ),

      body: Center(
        child: Row(
          children: [

          ]
        )
      ),
      // body: Center(
      //     child: Row(
      //       mainAxisAlignment: .center,
      //       children: [
      //         Column(
      //           children: [],
      //         ),
  
      //         // Image(
      //         //   image: const NetworkImage(
      //         //     //'http://www.bakerita.com/wp-content/uploads/2015/06/No-Bake-Raspberry-Chocolate-Truffle-Tart-Paleo-11.jpg'
      //         //   )
      //         // )
      //       ]
      //     )
      // ),
      

      drawer: Drawer(),

      bottomNavigationBar: BottomNavigationBar(
        
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'Home'),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings), 
            label: 'Settings',
          ),
            
        ],
      ),

      //FAB has
      //onPressed, tooltip, child, backgroundColor, foregroundColor, shape.
      floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: const Text('Home')
            ),
    );
  }
}
*/