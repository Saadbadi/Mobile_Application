import 'package:flutter/material.dart';
import 'screen0.dart';
class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      drawer: NavigationDrawer(),
      appBar: AppBar(title: Text('Screen 2'),),

      body: Center(child: Text("Screen 2 ",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),)));
  }
}
