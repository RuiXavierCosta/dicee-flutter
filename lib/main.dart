import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Dice(),
          Dice(),
        ],
      ),
    );
  }
}

class Dice extends StatefulWidget {
  Dice({Key key}) : super(key: key);

  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int diceValue = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: FlatButton(
          onPressed: () {
            setState(() {
              diceValue = 1 + Random().nextInt(4);
            });
          },
          padding: EdgeInsets.all(16.0),
          child: Image.asset('assets/images/dice$diceValue.png'),
        ),
      ),
    );
  }
}
