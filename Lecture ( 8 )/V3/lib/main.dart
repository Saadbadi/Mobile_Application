import 'package:flutter/material.dart';
import 'InputPage.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(

      colorScheme:
      ColorScheme.light(primary: Color(0xFF0A0E21),secondary: Colors.purple),
      scaffoldBackgroundColor: const Color(0xFF0A0E21),
      textTheme: TextTheme(bodyText2: TextStyle(color: Color(0xFFFFFFFF))),

    ),
    home: Scaffold(
      appBar: AppBar(),
      body: InputPage(),
    ),
  ));
}


