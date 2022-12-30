import 'package:geolocator/geolocator.dart';

class Location {
  // Location({required this.longitude,required this.latitude});
  late double longitude;
  late double latitude;

  Future<void> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();

    if (permission == LocationPermission.denied) {
      print("Permission");
    } else {
      try {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.low);
        longitude = position.longitude;
        latitude = position.latitude;
        print(position);
      } catch (e) {
        print(e);
      }
    }
  }
}
