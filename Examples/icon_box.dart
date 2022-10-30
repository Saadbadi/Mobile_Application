import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Lecture 3-p4'),
      ),


      // https://api.flutter.dev/flutter/material/Icons-class.html ( For Icons Ref. )
      body: Column(

crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Container(width:100,height:100,color: Colors.yellow,
            child: Row(
                children: [
                  SizedBox(width: 50,),

                  Icon(Icons.toys,size: 40,color: Colors.red,),
                  SizedBox(width: 50,),
                  Text('Mercedes Benz Car 😁',style: TextStyle(fontSize: 22),)
                ],
              
            ),),

           
        ],
      )
    ),
  ));
}
