import 'dart:convert';
import 'package:weather_app/service/location.dart';
import 'package:http/http.dart' as http;

class Networking {
  Networking({required this.URLOFAPI});

  final URLOFAPI;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(URLOFAPI));

    String data = response.body;

    if (response.statusCode == 200) {
      return jsonDecode(data);
    } else {
      print('error');
    }
  }
}
