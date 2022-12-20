import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  ConText:"MALE"),
              col:UncheckedContainerBackground),
        ),
        Expanded(
          child: ReusableContainer(
              ContainerChild:ContainerIconText(
                  ConText:"FEMALE",
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

class ContainerIconText extends StatelessWidget {
  final IconType;
  final ConText;
  ContainerIconText({required this.IconType, required this.ConText});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Icon(IconType,color: Colors.white,size: 80,),

        SizedBox(height: 15,),

        Text(ConText,style: TextStyle(fontSize: 20),)
      ],
      
    );
  }
}

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