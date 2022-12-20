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
          child: Container(

            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xFF1B1C2B),
             borderRadius: BorderRadius.circular(10),


            ),
           ),
        ),
        Expanded(
          child: Container(

            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color(0xFF1B1C2B),
              borderRadius: BorderRadius.circular(10),


            ),

          ),
        )


    ],
  ),
),

          Expanded(
            child: Row(
              children: [

                Expanded(
                  child: Container(

                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFF1B1C2B),
                      borderRadius: BorderRadius.circular(10),


                    ),
                  ),
                ),



              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [

                Expanded(
                  child: Container(

                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFF1B1C2B),
                      borderRadius: BorderRadius.circular(10),


                    ),
                  ),
                ),
                Expanded(
                  child: Container(

                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFF1B1C2B),
                      borderRadius: BorderRadius.circular(10),


                    ),

                  ),
                )


              ],
            ),
          ),
        ],



      ),
    );
  }
}