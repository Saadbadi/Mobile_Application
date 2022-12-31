import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(color: Colors.yellow,width: double.infinity,height: 400,),
            Container(color: Colors.red,width: double.infinity,height: 400,),
            Container(color: Colors.green,width: double.infinity,height: 400,),
            Container(color: Colors.blue,width: double.infinity,height: 400,),
            Container(color: Colors.lightGreen,width: double.infinity,height: 400,),
            Container(color: Colors.black45,width: double.infinity,height: 400,),
            Container(color: Colors.white,width: double.infinity,height: 400,),
            Container(color: Colors.amberAccent,width: double.infinity,height: 400,),
            Container(color: Colors.brown,width: double.infinity,height: 400,),

          ],
        ),
      ),
    );
  }
}
