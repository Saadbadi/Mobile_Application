import 'package:flutter/material.dart';
import 'dart:math';
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
  int RightDicce = 1;
  int LeftDicce = 1;

  void Dice()
  {
    RightDicce =  Random().nextInt(6)+1;
    LeftDicce = Random().nextInt(6)+1;

  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(title: Text("Dice Game"),),
      body: Center(
        child: SafeArea(
          child: Row(
            children: [
              //
              Expanded(child: TextButton(
                  onPressed: (){

                    setState(() {
                      Dice();
                    });
                   },
                  child: Image.asset('images/dice$RightDicce.png'))),

              //Second Button
              Expanded(child: TextButton(
                  onPressed: (){
                    setState(() {
                      Dice();

                    });
                    print("Button 2 pressed");
                  },

                  child: Image.asset('images/dice$LeftDicce.png')))

            ],
          ),
        ),
      ),),
    );
  }
}
