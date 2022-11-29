import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),

            Positioned(
              top: 50,
              left: 30,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.yellow,),
            )
          ],
        ),
      ),
    );
  }
}

