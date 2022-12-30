import 'package:flutter/material.dart';
import 'package:weather_app/constant.dart';
import 'package:weather_app/service/weather.dart';
import 'city_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

WeatherModel weatherModel = WeatherModel();

class LocationScreen extends StatefulWidget {
  LocationScreen({required this.WeatherData});

  final WeatherData;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late int condition = 10;
  late double tempreature = 22.0;
  late String cityName = 'Baghdad';

  late String ConditionEmoji = '🌨️';
  late String Message = '';

  late String dayName = 'Sunday';
  late String md = 'Dec 18';
  late String time = '09:15';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    UpdateUI(widget.WeatherData);
  }

  @override
  void UpdateUI(dynamic weatherData) {
    setState(() {
      condition = weatherData['weather'][0]['id'];
      var lat = weatherData['coord']['lat'];
      tempreature = weatherData['main']['temp'];

      cityName = weatherData['name'];

      ConditionEmoji = weatherModel.getWeatherIcon(condition);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.gif'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
//----------------------------- NavBar Buttons -------------------------------------
                  TextButton(
                    onPressed: () async {
                      var weather = await weatherModel.OpenWeatherMap();
                      UpdateUI(weather);
                    },
                    child: Icon(
                      Icons.near_me,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      var cityName = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CityScreen()));
                      if (cityName != null) {
                        var weather = await weatherModel.CityWeather(cityName);
                        UpdateUI(weather);
                      }
                    },
                    child: Icon(
                      Icons.search_rounded,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

//----------------------------- Message & City Name ----------------------------------------------

              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  '$cityName',
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
//----------------------------- Tem ----------------------------------------------

              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      '${tempreature.toInt()}°',
                      style: kTempTextStyle,
                    ),

//----------------------------- Tem Icon----------------------------------------------

                    Text(
                      '$ConditionEmoji',
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),

//----------------------------- Date ( Day Name | Mon Day | Time ) ----------------------------------------------
              Text(
                '$dayName | $md | $time',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
//-----------------------------Divider----------------------------------------------
              Divider(color: Colors.white),

//-----------------------------wind Speed humidity----------------------------------------------

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.wind,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        '1.0 m/s',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.gauge,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        '1.0 m/s',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.droplet,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        '1.0 m/s',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
