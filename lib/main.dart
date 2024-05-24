import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: () {
              final play1 = AudioPlayer();
              play1.play(AssetSource('note1.wav'));
            },
            child: const Text('Click on Me!'),
          )
        ),
      ),
    ));
  }
}
