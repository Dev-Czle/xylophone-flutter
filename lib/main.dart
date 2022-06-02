import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
final player = AudioCache();

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xylophoneButton(soundNumber: '1', color: Colors.red),
              xylophoneButton(soundNumber: '2', color: Colors.orange),
              xylophoneButton(soundNumber: '3', color: Colors.yellow),
              xylophoneButton(soundNumber: '4', color: Colors.green),
              xylophoneButton(soundNumber: '5', color: Colors.teal),
              xylophoneButton(soundNumber: '6', color: Colors.blue),
              xylophoneButton(soundNumber: '7', color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

Expanded xylophoneButton({String soundNumber, Color color}) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        player.play('note$soundNumber.wav');
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ))),
      child: Text(''),
    ),
  );
}
