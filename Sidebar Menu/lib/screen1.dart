import 'package:flutter/material.dart';
import 'screen0.dart';
class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      drawer: NavigationDrawer(),
      appBar: AppBar(title: Text('Screen 1'),),


      body: Center(child: Text("Screen 1 ",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),)));

  }
}
