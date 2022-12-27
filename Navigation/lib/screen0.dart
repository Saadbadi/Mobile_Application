import 'package:flutter/material.dart';
import 'package:route_app/screen1.dart';
import 'screen2.dart';

class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Screen 0'),
      ),
      body: Center(
        child: Column(
          children:[
            TextButton(

              style:TextButton.styleFrom(backgroundColor: Colors.red),
              child: Text('Go To Screen 1',style: TextStyle(color: Colors.white),),
              onPressed: () {


                //Navigate to Screen 1 ( First Method )
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen1()));


                //Navigate to Screen 1 ( Second Method )
                Navigator.pushNamed(context, '/first');


              },
            ),
            TextButton(
              style:TextButton.styleFrom(backgroundColor: Colors.blue),
              child: Text('Go To Screen 2',style: TextStyle(color: Colors.white),),
              onPressed: () {


                 //Navigate to Screen 2 ( First Method )
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));


                //Navigate to Screen 2 ( Second Method )
                Navigator.pushNamed(context, '/second');

              },
            ),
  ],
        ),
      ),
    );
  }
}
