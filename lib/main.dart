import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playSound(int soundNumber) {
    final play1 = AudioPlayer();
    play1.play(AssetSource('note$soundNumber.wav'));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(children: [
             TextButton(
              
              
          onPressed: () {
            playSound(1);
          },
          child: Container(
            width: double.infinity,
            height: 100.0,
            color: Colors.red,
          )
          
         
          
        ),
            TextButton(
          onPressed: () {
           playSound(2);
          },
          child: Container(
            width: double.infinity,
            height: 100.0,
            color: Colors.orange,
          ),
          
        ),
            TextButton(
          onPressed: () {
            playSound(3);
          },
          child: Container(
            width: double.infinity,
            height: 100.0,
            color: Colors.yellow,
          ),
          
        ),
           TextButton(
          onPressed: () {
            playSound(4);
          },
          child: Container(
            width: double.infinity,
            height: 100.0,
            color: Colors.green,
          ),
          
        ),
            TextButton(
          onPressed: () {
            playSound(5);
          },
          child: Container(
            width: double.infinity,
            height: 100.0,
            color: Colors.teal,
          ),
          
        ),
            TextButton(
          onPressed: () {
          playSound(6);
          },
          child: Container(
            width: double.infinity,
            height: 100.0,
            color: Colors.blue,
          ),
          
        ),
            TextButton(
          onPressed: () {
            playSound(7);
          },
          child: Container(
            width: double.infinity,
            height: 100.0,
            color: Colors.purple,
          ),
          
        ),
        ],)
     
      ),
    ));
  }
}
