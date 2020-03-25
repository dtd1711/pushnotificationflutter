


import 'package:location/location.dart';

class CurrentLocationService {
  final Location _location = Location();

  Future<LocationData> getCurrentLocation() async {
    return await _location.getLocation();
  }
}