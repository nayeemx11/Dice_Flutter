import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var randomFirst = Random().nextInt(6) + 1;
  var randomSecond = Random().nextInt(6) + 1;

  void changeDiceFace() {
    setState(() {
      print("pressed");
      randomFirst = Random().nextInt(6) + 1;
      randomSecond = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text(
          'Dicee',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  changeDiceFace();
                },
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$randomFirst.png'),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  changeDiceFace();
                },
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$randomSecond.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
