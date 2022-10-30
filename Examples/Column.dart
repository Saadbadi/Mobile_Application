import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Lecture 3-p1'),
      ),




      body: Column(
        /*
MainAxisAlignment.start
    Positions children near the beginning of the main axis. (Left for Row, top for Column)
MainAxisAlignment.end
    Positions children near the end of the main axis. (Right for Row, bottom for Column)
MainAxisAlignment.center
    Positions children at the middle of the main axis.
MainAxisAlignment.spaceBetween
    Divides the extra space evenly between children.
MainAxisAlignment.spaceEvenly
    Divides the extra space evenly between children and before and after the children.
MainAxisAlignment.spaceAround
    Similar to MainAxisAlignment.spaceEvenly, but reduces half of the space before the first child and after the last child to half of the width between the children.
        */

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
/*
CrossAxisAlignment.start
    Positions children near the start of the cross axis. (Top for Row, Left for Column)
CrossAxisAlignment.end
    Positions children near the end of the cross axis. (Bottom for Row, Right for Column)
CrossAxisAlignment.center
    Positions children at the middle of the cross axis. (Middle for Row, Center for Column)
CrossAxisAlignment.stretch
    Stretches children across the cross axis. (Top-to-bottom for Row, left-to-right for Column)
CrossAxisAlignment.baseline
    Aligns children by their character baselines. (Text class only, and requires that the textBaseline property is set to TextBaseline.alphabetic. See the Text widget section for an example.)
*/



crossAxisAlignment: CrossAxisAlignment.stretch,


        children: [
          Container(width: 60,height: 70,color: Colors.red,),
          Container(width: 60,height: 70,color: Colors.blue,),
          Container(width: 60,height: 70,color: Colors.deepOrangeAccent,)

        ],
      )
    ),
  ));
}
