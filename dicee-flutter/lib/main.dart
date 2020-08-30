import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftValue = 1;
  int rightValue = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  setStateOfDice();
                });
              },
              child: Image.asset('images/dice$leftValue.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  setStateOfDice();
                });
              },
              child: Image.asset('images/dice$rightValue.png'),
            ),
          ),
        ],
      ),
    );
  }

  void setStateOfDice(){
    leftValue = Random().nextInt(6) + 1;
    rightValue = Random().nextInt(6) + 1;
  }
}