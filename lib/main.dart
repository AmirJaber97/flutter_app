import 'package:flutter/material.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      title: 'My First Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String timeTense = 'time';

  void incrementCounter() {
    _counter++;
    setTimeTense();
  }

  void setTimeTense() {
    if (_counter == 1) {
      timeTense = 'time';
    } else {
      timeTense = 'times';
    }
  }

  @override
  Widget build(BuildContext context) {
    setTimeTense();
    return Scaffold(
      appBar: AppBar(
        title: Text('This is an appbar'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Text('You have pushed the button $_counter $timeTense'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            incrementCounter();
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
