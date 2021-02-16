import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.black,
    Colors.green,
    Colors.blueGrey,
    Colors.deepOrange,
    Color(0xFFFBFBFB),
    Color(0xFF1c1c1c),
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.pink,
    Colors.orange,
  ];

  var currentColor = Colors.white;

  void setRandomColor() {
    var num = Random().nextInt(colors.length);

    setState(() {
      currentColor = colors[num];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          color: Colors.black,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text(
            'Change The Color!!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: setRandomColor,
        ),
      ),
    );
  }
}
