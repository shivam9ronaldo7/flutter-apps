import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: AppBody(),
    ),
  )
);

class AppBody extends StatefulWidget {
  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  int imageNumber = Random().nextInt(5) + 1;
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
              child: Image.asset('images/ball$imageNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
  void setStateOfDice(){
    imageNumber = Random().nextInt(5) + 1;
  }
}
