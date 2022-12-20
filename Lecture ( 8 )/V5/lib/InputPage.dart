import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_details.dart';
import 'reusable_container.dart';


const double BottomContainerHeight = 60;

const Color UncheckedContainerBackground = Color(0xFF1B1C2B);

const Color BottomContainerColor = Colors.red;

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
          child: ReusableContainer(
              ContainerChild:ContainerIconText(
                  IconType:FontAwesomeIcons.mars,
                  label:"MALE"),
              col:UncheckedContainerBackground),
        ),
        Expanded(
          child: ReusableContainer(
              ContainerChild:ContainerIconText(
                  label:"FEMALE",
                  IconType:FontAwesomeIcons.venus),

              col:UncheckedContainerBackground),
        )


    ],
  ),
),

          Expanded(
            child: Row(
              children: [

                Expanded(

                  child: ReusableContainer(
                      ContainerChild:Column(),
                      col:UncheckedContainerBackground),
                ),



              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [

                Expanded(

                  child: ReusableContainer(
                      ContainerChild:Column(),
                      col:UncheckedContainerBackground),
                ),
                Expanded(
                  child: ReusableContainer(
                      ContainerChild:Column(),
                      col:UncheckedContainerBackground),
                )


              ],
            ),
          ),

          Container(
            width: double.infinity,
            margin: EdgeInsets.all(15),
            height: BottomContainerHeight,
            
            decoration: BoxDecoration(
              color: BottomContainerColor,
              borderRadius: BorderRadius.circular(10)
              
            ),
            
            child: Center(child: Text("Move to next page"),),
          ),
        ],



      ),
    );
  }
}


