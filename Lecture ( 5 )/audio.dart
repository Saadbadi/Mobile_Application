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
    return MaterialApp(home: Scaffold(appBar: AppBar(),
    body: Column(

      children: [
        Expanded(
          child: TextButton(onPressed:(){
            final player = AudioPlayer();
            player.play(AssetSource('note1.wav'));
          },
              child: Container(

            color: Colors.orange,)),
        )
      ],
    ),


      ),);
  }
}

