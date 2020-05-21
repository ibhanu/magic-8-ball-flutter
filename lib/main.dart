import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.blue,
              appBar: AppBar(
                backgroundColor: Colors.blue[900],
                title: Text('Ask Me Anything'),
              ),
              body: Ball()),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 1],
          colors: [Colors.orange, Colors.blue[900]],
        ),
      ),
      child: Center(
        child: FlatButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () {
            changeBallNumber();
          },
        ),
      ),
    );
  }
}
