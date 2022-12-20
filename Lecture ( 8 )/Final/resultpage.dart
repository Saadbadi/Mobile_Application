import 'package:draft_draft/Input_Page.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'reusableContaier.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.geResul, required this.BMI, required this.interpretation});
  String interpretation;
  String geResul;
  String BMI;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0D1335),
        appBar: AppBar(
          title: Text("Results Page"),
          backgroundColor: Color(0xFF101639),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: ResulTextStyle,
              ),
            )),
            Expanded(
              flex: 5,
              child: ReusableContainer(
                colorCon: ActiveContainerColor,
                ChildWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      geResul,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.green[400],
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      BMI,
                      style: TextStyle(
                          fontSize: 90,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      interpretation,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/result');
              },
              child: Container(
                child: GestureDetector(
// When click on the button
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InputPage()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Re-CALCULATE",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    )),
                    color: Color(0XFFEB1555),
                    padding: EdgeInsets.only(bottom: 20.0),
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    width: double.infinity,
                    height: 80,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
