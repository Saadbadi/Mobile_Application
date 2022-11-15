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

  void playSound(int noteNumber)
  {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }
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
                  playSound(1);
                },
                child: Container(color: Colors.black,

                 )),
          ),

          Expanded(
            child: TextButton(

                onPressed:(){
                  playSound(2);
                },
                child: Container(color: Colors.white,

                 )),
          ),

          Expanded(
            child: TextButton(

                onPressed:(){
                  playSound(3);
                },
                child: Container(color: Colors.black,

                 )),
          ),


          Expanded(
            child: TextButton(

                onPressed:(){
                  playSound(4);
                },
                child: Container(color: Colors.white,

                 )),
          ),


          Expanded(
            child: TextButton(

                onPressed:(){
                  playSound(5);
                },
                child: Container(color: Colors.black,

                 )),
          ),
          Expanded(
            child: TextButton(

                onPressed:(){
                  playSound(6);
                },
                child: Container(color: Colors.white,

                )),
          ),
          Expanded(
            child: TextButton(

                onPressed:(){
                  playSound(7);
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

