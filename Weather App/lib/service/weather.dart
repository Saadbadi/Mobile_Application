import 'package:weather_app/service/location.dart';
import 'package:weather_app/service/networking.dart';

const apiKey = '3b2196b9d24cead5c33f689568736fc7';

class WeatherModel {
  Future<dynamic> CityWeather(dynamic city) async {
    Networking networkHelper = await Networking(
        URLOFAPI:
            'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric');

    return await networkHelper.getData();
  }

  Future<dynamic> OpenWeatherMap() async {
    Location GetLocation = Location();

    await GetLocation.getCurrentLocation();

    //print(GetLocation.latitude);

    Networking networkHelper = await Networking(
        URLOFAPI:
            'https://api.openweathermap.org/data/2.5/weather?lat=${GetLocation.latitude}&lon=${GetLocation.longitude}&appid=$apiKey&units=metric');
    return await networkHelper.getData();
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }
}

/*








 */
