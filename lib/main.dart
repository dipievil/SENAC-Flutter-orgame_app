import 'package:flutter/material.dart';
import 'package:orgame_app/pages/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OrGames',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Organize your game collection"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  GridView _gridConsoles() {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              children: const [
                Text("Nome console"),
              ],
            ),
          );
        });
  }

  Widget _listConsoles() {
    return ListView(
      children: [
        _myImage("Mega Drive", "assets/images/echo.jpg"),
        _myImage("Master System", "assets/images/smartwatch.jpg"),
        _myImage("Nintendo", "assets/images/smarttv.jpg"),
        _myImage("Super Nintendo", "assets/images/smartphone.jpg")
      ],
    );
  }

  Widget _listGames() {
    return ListView(
      children: [
        _myImage("Echo Dot", "assets/images/echo.jpg"),
        _myImage("Smart Watch", "assets/images/smartwatch.jpg"),
        _myImage("Smart TV", "assets/images/smarttv.jpg"),
        _myImage("Smart Phone", "assets/images/smartphone.jpg")
      ],
    );
  }

  Widget _myImage(nome, path) {
    return Column(
      children: [
        Image.asset(path, width: 200, height: 200, fit: BoxFit.contain),
        Text(
          "$nome",
          style: const TextStyle(
              backgroundColor: Colors.grey, color: Colors.white),
        )
      ],
    );
  }
}
