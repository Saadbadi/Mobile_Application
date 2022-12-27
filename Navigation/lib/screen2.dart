import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen 2'),
      ),
      body: Center(
        child: TextButton(
    style:TextButton.styleFrom(backgroundColor: Colors.blue),
          child: Text('Go Back To Screen 1',style: TextStyle(color: Colors.white),),
          onPressed: () {



            //Navigate to Screen 1
            Navigator.pop(context);

          },
        ),
      ),
    );
  }
}