import 'package:flutter/material.dart';
import 'screen0.dart';
import 'screen1.dart';
import 'screen2.dart';
void main() {
  runApp(const mainPage());
}

class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // home : Sccren0()
initialRoute: '/',
      routes: {
      '/': (context) => Screen0(),
      '/first' :   (context) => Screen1(),
        '/second':(context) => Screen2(),
      },
    

    );
  }
}

