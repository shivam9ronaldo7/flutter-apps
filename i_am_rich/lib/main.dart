import 'package:flutter/material.dart';

//This is main function or entry point for all apps
void main() {
  runApp(
    //Here we are using material design in which everything is widget
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(
            child: Text('I Am Rich'),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),

        ),
      )
    ),
  );
}
