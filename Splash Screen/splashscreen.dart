import 'package:flutter/material.dart';
import 'dart:async';
import 'screen1.dart';
import 'introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    setValue();

  }



  void setValue() async {
    //SharedPreference is a small data storage in our phone where we can store data in pairs of keys and values.
    // We can store an integer, string, list of strings, Boolean, and double in SharedPreferences.

    //Firstly, you need to create an instance of shared preference and store it in a variable.
    final prefs = await SharedPreferences.getInstance();

    // Using prefs, you can access many functions to set and get data in different data types. in our example we use INT
    int launchCount = prefs.getInt('counter') ?? 0;

    // Key ( Counter ) must be the same in both getter (prefs.getInt )  and setter(prefs.setInt)  to get value for that particular key.
    prefs.setInt('counter', launchCount + 1);

    if (launchCount == 0) {

      Navigator.push(context, MaterialPageRoute(builder: (context)=>IntroductionScreens()));
      print("first launch"); // move to some other page
    }
    else {
      Timer(const Duration(seconds: 3),
              ()=>Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) =>
                  Screen2()
              )
          )
      );

      print("Not first launch");
    }
  }


void splash()
{

}
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}
