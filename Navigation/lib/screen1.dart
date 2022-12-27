import 'package:flutter/material.dart';
import 'screen2.dart';
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 1'),
      ),
      body: Center(
        child: TextButton(
    style:TextButton.styleFrom(backgroundColor:  Colors.red),
          child: Text('Go Forwards To Screen 2',style: TextStyle(color: Colors.white),),
          onPressed: () {

            //Navigate to Screen 2 ( First Method )
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));


            //Navigate to Screen 2 ( Second Method )
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}
