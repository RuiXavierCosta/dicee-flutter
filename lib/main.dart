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

var diceValues = <int>[1, 1];

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Dice());
  }
}

class Dice extends StatefulWidget {
  Dice({Key key}) : super(key: key);

  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  void _rollDice() {
    setState(() {
      diceValues = <int>[1 + Random().nextInt(5), 1 + Random().nextInt(5)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: Expanded(
            child: FlatButton(
              onPressed: () {
                _rollDice();
              },
              padding: EdgeInsets.all(16.0),
              child: Image.asset('assets/images/dice${diceValues[0]}.png'),
            ),
          ),
        ),
        Container(
          child: Expanded(
            child: FlatButton(
              onPressed: () {
                _rollDice();
              },
              padding: EdgeInsets.all(16.0),
              child: Image.asset('assets/images/dice${diceValues[1]}.png'),
            ),
          ),
        ),
      ],
    );
  }
}
