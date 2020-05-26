import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Ask Me anything'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Magic8Ball(),
      ),
    ),
  );
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int number = 1;
  void play() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
            child: FlatButton(
                onPressed: () {
                  play();
                },
                child: Image.asset('images/ball$number.png'))),
      ]),
    );
  }
}
