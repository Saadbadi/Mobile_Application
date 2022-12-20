import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_details.dart';
import 'reusable_container.dart';


const double BottomContainerHeight = 60;

const Color ActiveCotainerBAckground = Color(0xFF1B1C2B);

const Color InActiveCotainerBAckground = Color(0xFF111328);

const Color BottomContainerColor = Colors.red;

enum Gender{
  empty,
  male,
female

}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender SelectedGender = Gender.empty;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
Expanded(
  child:   Row(
    children: [

        Expanded(
          child: GestureDetector(
            onTap: (){

              setState(() {
                SelectedGender = Gender.male;
              });
            },
            child: ReusableContainer(
                ContainerChild:ContainerIconText(
                    IconType:FontAwesomeIcons.mars,
                    label:"MALE"),
col: SelectedGender == Gender.male?ActiveCotainerBAckground:InActiveCotainerBAckground




            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){

              setState(() {
                SelectedGender = Gender.female;
              });
            },
            child: ReusableContainer(
                ContainerChild:ContainerIconText(
                    label:"FEMALE",
                    IconType:FontAwesomeIcons.venus),

                col: SelectedGender == Gender.female?ActiveCotainerBAckground:InActiveCotainerBAckground
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

                  child: ReusableContainer(
                      ContainerChild:Column(),
                      col:ActiveCotainerBAckground),
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
                      col:ActiveCotainerBAckground),
                ),
                Expanded(
                  child: ReusableContainer(
                      ContainerChild:Column(),
                      col:ActiveCotainerBAckground),
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


