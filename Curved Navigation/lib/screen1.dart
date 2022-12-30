import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      backgroundColor: Colors.green,

      body: Center(child: Text("Screen 1",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900),),),
    );
  }
}
