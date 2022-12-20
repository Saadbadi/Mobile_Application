import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableContaier.dart';
import 'roundIconbutton.dart';
import 'constant.dart';
import 'resultpage.dart';
import 'brain.dart';
enum Gender { empty, Female, Male }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender SelectedGender = Gender.empty;
  int height = 120;
  int weight = 50;
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0D1335),
        appBar: AppBar(
          title: Text("BMI Calculator"),
          backgroundColor: Color(0xFF101639),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          print(" MALE Button Clicked");
                          setState(() {

                            SelectedGender = Gender.Male;
                          });
                        },
                        child: ReusableContainer(
                          colorCon: SelectedGender == Gender.Male
                              ? InActiveContainerColor
                              : ActiveContainerColor,
                          ChildWidget: ColumnTextIcon(
                            GenderIcon: FontAwesomeIcons.mars,
                            GenderName: "MALE",
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        print("FEMALE Button Clicked");

                        setState(() {
                          SelectedGender = Gender.Female;
                        });
                      },
                      child: ReusableContainer(
                        colorCon: SelectedGender == Gender.Female
                            ? InActiveContainerColor
                            : ActiveContainerColor,
                        ChildWidget: ColumnTextIcon(
                          GenderIcon: FontAwesomeIcons.venus,
                          GenderName: "FEMALE",
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              Expanded(
                child: ReusableContainer(
                    colorCon: ActiveContainerColor,
                    ChildWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                              color: Color(0xFFB5B7C5),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(height.toString(), style: SliderTextStyle),
                            Text(
                              "cm",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                        Slider(
                            min: 100,
                            max: 300,
                            activeColor: Colors.red,
                            inactiveColor: Colors.blue,
                            value: height.toDouble(),
                            onChanged: (double value) {
                              setState(() {
                                height = value.toInt();
                              });
                              print(value);
                            }),
                      ],
                    )),
              ),

//-----------------------------------  Wieght ----------------------------------
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableContainer(
                          colorCon: ActiveContainerColor,
                          ChildWidget: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Weight",
                                style: SliderlabelStyle,
                              ),
                              Text(
                                weight.toString(),
                                style: SliderTextStyle,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RoundIconButton(
                                    iconDown: Icons.add,
                                    onpresse: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                  RoundIconButton(
                                    iconDown: Icons.remove,
                                    onpresse: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  )
                                ],
                              )
                            ],
                          )),
                    ),



























//------------------------------------ age ---------
                    Expanded(
                      child: ReusableContainer(
                          colorCon: ActiveContainerColor,
                          ChildWidget: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Age",
                                style: SliderlabelStyle,
                              ),
                              Text(
                                age.toString(),
                                style: SliderTextStyle,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RoundIconButton(
                                    iconDown: Icons.add,
                                    onpresse: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                  RoundIconButton(
                                    iconDown: Icons.remove,
                                    onpresse: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  )
                                ],
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),


























//--------------------------------- CALCULATE Button ------------------------------
              GestureDetector(
                onTap: () {
// Finding BMI results by providing the weight and height values to the Calculate Result class.
Calculate_Result cal = Calculate_Result(weight: weight,heigh: height);
// Re-pass the results to the Results Page after that.

Navigator.push(context, MaterialPageRoute(builder: (Context)=>
                  ResultPage(geResul: cal.getResult(),BMI: cal.calculateBMI(),interpretation: cal.interpretation(),)

                  ));
                },
                child: Container(
                  child: Center(
                      child: Text(
                    "Calculate",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  )),
                  color: Color(0XFFEB1555),
                   padding: EdgeInsets.only(bottom: 20.0),
                  margin: EdgeInsets.fromLTRB(12, 10, 12, 0),
                  width: double.infinity,
                  height: 80,
                ),
              )
            ],
          ),
        ));
  }
}

class ColumnTextIcon extends StatelessWidget {
  final GenderIcon;
  late String GenderName;

  ColumnTextIcon({required this.GenderIcon, required this.GenderName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          GenderIcon,
          color: Color(0xFFFFFEFF),
          size: 90,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          GenderName,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }
}
