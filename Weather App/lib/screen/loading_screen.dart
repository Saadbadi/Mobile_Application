import 'package:flutter/material.dart';
import 'package:weather_app/service/location.dart';
import 'package:weather_app/service/weather.dart';
import 'location_screen.dart';
import 'dart:async';
import 'package:weather_app/screen/location_screen.dart';

Location GetLocation = Location();

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetLocation();
  }

  void GetLocation() async {
    Timer(Duration(seconds: 2), () async {
      var weatherdate = await WeatherModel().OpenWeatherMap();

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LocationScreen(
                    WeatherData: weatherdate,
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF98BEDC),
        body: Container(
          width: double.infinity,
          color: Color(0xFF98BEDC),
          child: Center(child: Image.asset('images/splash.gif')),
        ));
  }
}
