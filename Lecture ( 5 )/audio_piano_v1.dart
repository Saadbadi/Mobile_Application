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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextButton(

                onPressed:(){
                  final player = AudioPlayer();
                  player.play(AssetSource('note1.wav'));
                },
                child: Container(color: Colors.black,

                 )),
          ),

          Expanded(
            child: TextButton(

                onPressed:(){
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'));
                },
                child: Container(color: Colors.white,

                 )),
          ),

          Expanded(
            child: TextButton(

                onPressed:(){
                  final player = AudioPlayer();
                  player.play(AssetSource('note3.wav'));
                },
                child: Container(color: Colors.black,

                 )),
          ),


          Expanded(
            child: TextButton(

                onPressed:(){
                  final player = AudioPlayer();
                  player.play(AssetSource('note4.wav'));
                },
                child: Container(color: Colors.white,

                 )),
          ),


          Expanded(
            child: TextButton(

                onPressed:(){
                  final player = AudioPlayer();
                  player.play(AssetSource('note5.wav'));
                },
                child: Container(color: Colors.black,

                 )),
          ),
        ],
      ),
    ),
      ),);
  }
}

