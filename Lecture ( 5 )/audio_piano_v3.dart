import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey(int sound, Color color) {
    return Expanded(
      child: TextButton(
          onPressed: () {
            playSound(sound);
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: color,
          ),
          child: Text(" ")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.black),
              buildKey(2, Colors.white),
              buildKey(3, Colors.black),
              buildKey(4, Colors.white),
              buildKey(5, Colors.black),
              buildKey(6, Colors.white),
              buildKey(7, Colors.black)
            ],
          ),
        ),
      ),
    );
  }
}
