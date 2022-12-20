import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.iconDown, required this.onpresse});
  final iconDown;
  final  onpresse;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        iconDown,
        color: Colors.white,
      ),
      onPressed: onpresse,
       elevation: 9.0,
      //For boxes, the constraints are BoxConstraints,
      // which, as described herein, consist of four numbers: a minimum width minWidth,
      // a maximum width maxWidth, a minimum height minHeight,
      // and a maximum height maxHeight
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),

      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
