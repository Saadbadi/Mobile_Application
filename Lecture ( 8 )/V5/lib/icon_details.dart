
import 'package:flutter/material.dart';
class ContainerIconText extends StatelessWidget {
  final IconData IconType;
  final String label;
  ContainerIconText({required this.IconType, required this.label});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Icon(IconType,color: Colors.white,size: 80,),

        SizedBox(height: 15,),

        Text(label,style: TextStyle(fontSize: 20),)
      ],

    );
  }
}
