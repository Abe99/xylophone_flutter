import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playSound(int soundNumber) {
    final play1 = AudioPlayer();
    play1.play(AssetSource('note$soundNumber.wav'));
  }

  TextButton buildKey(int note, Color color) {
    return TextButton(
        onPressed: () {
          playSound(note);
        },
        child: Container(
          width: double.infinity,
          height: 145.0,
          color: color,
        ));
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
          buildKey(1, Colors.red),
          buildKey(2, Colors.orange),
          buildKey(3, Colors.yellow),
          buildKey(4,Colors.green)
       ,
          buildKey(5,Colors.teal),
          buildKey(6,Colors.blue),
          buildKey(7,Colors.purple),
        ],
      )),
    ));
  }
}
