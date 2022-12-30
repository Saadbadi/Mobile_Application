import 'package:flutter/material.dart';



class Screen0 extends StatefulWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  _Screen0State createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.amberAccent,
      body: Center(child: Text("Screen 0",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900),),),

    );
  }
}
