import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Lecture 3-p1'),
      ),
      // SafeArea is an important and useful widget in Flutter which makes UI dynamic and adaptive to a wide variety of devices.

      // Step ( 1 ) : Run the output using the following code only ( Without SafeArea )
      /*
      body: Text('Hello, World'),
      */
      body: SafeArea(
        // A Container class can be used to store one or more widgets and position them on the screen according to our convenience. Basically, a container is like a box to store contents.

        child: Container(
          color: Colors.teal,

          // Step ( 2 ) : Use Container without child, What is the output??

          //Step ( 4 ) : After complete Step ( 3 ) use Padding and margin
/*
         ///same padding to all the four sides: left, top, right, bottom
padding: EdgeInsets.all(10)
///provide padding to left, top, right, bottom respectively
padding: EdgeInsets.fromLTRB(10, 15, 20, 5)
///provide padding only to the specified sides
padding: EdgeInsets.only(left: 20, top:30)
What is the difference between padding and margin ???
         */
          padding: EdgeInsets.all(50),
          margin: EdgeInsets.all(50),
          // Step ( 3 ) : Use Container with child, What output means??
          child: Text('Hello, World'),
        ),
      ),
    ),
  ));
}
