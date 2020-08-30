import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded keyNotes({Color color, String noteNum}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          final player = AudioCache();
          player.play('note$noteNum.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              keyNotes(color: Colors.red, noteNum: '1'),
              keyNotes(color: Colors.orange, noteNum: '2'),
              keyNotes(color: Colors.green, noteNum: '3'),
              keyNotes(color: Colors.blue, noteNum: '4'),
              keyNotes(color: Colors.yellow, noteNum: '5'),
              keyNotes(color: Colors.amber, noteNum: '6'),
              keyNotes(color: Colors.brown, noteNum: '7'),
            ],
          ),
        ),
      ),
    );
  }
}
