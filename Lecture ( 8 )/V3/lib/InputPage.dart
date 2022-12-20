import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
Expanded(
  child:   Row(
    children: [

        Expanded(
          child: ReusableContainer(col:Color(0xFF1B1C2B)),
        ),
        Expanded(
          child: ReusableContainer(col:Color(0xFF1B1C2B)),
        )


    ],
  ),
),

          Expanded(
            child: Row(
              children: [

                Expanded(
                  child: ReusableContainer(col:Color(0xFF1B1C2B)),
                ),



              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [

                Expanded(
                  child: ReusableContainer(col:Color(0xFF1B1C2B)),
                ),
                Expanded(
                  child: ReusableContainer(col:Color(0xFF1B1C2B)),
                )


              ],
            ),
          ),
        ],



      ),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  late Color col;
  ReusableContainer({required this.col});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: col,
       borderRadius: BorderRadius.circular(10),


      ),
     );
  }
}