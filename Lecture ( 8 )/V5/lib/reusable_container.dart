import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Color col;
  final Widget ContainerChild;
  ReusableContainer({required this.col, required this.ContainerChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ContainerChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: col,
        borderRadius: BorderRadius.circular(10),


      ),
    );
  }
}