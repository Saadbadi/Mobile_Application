import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),


      backgroundColor: Colors.red,
body: Center(child: Text("Screen 2",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900),),),
    );
  }
}