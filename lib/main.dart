import 'package:flutter/material.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              }, icon: const Icon(Icons.settings),),
        ],

      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
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

          mainAxisAlignment: .center,//centers on the MainAxis (here is the vertical line)
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            TextButton(
              onPressed: _resetCounter,
              child: const Text('Reset Counter'),
            ),

            SizedBox(height: 10),

            
          ],
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

          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),

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
      )
      
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text('This is the settings page'),

            SizedBox(height: 10),

            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, 
            child: const Text('Home'))
          ]
        )
      ),

      drawer: Drawer(),

      //FAB has
      //onPressed, tooltip, child, backgroundColor, foregroundColor, shape.
      //floatingActionButton: ,
    );
  }
}
