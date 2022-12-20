import 'package:flutter/material.dart';
class ReusableContainer extends StatelessWidget {

  late Widget ChildWidget;
  final colorCon;


  ReusableContainer({required this.ChildWidget, required this.colorCon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChildWidget,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: colorCon, borderRadius: BorderRadius.circular(10)),
    );
  }
}