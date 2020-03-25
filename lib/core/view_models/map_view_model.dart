
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:push_notification/core/services/current_location_service.dart';
import 'package:push_notification/core/services/map_controller_service.dart';
import 'package:push_notification/core/view_models/base_model.dart';
import 'package:push_notification/locator.dart';

class MapViewModel extends BaseModel {

  final MapControllerService _mapService = locator<MapControllerService>();

  void setController(GoogleMapController controller){
    _mapService.setMapController(controller);
  }

  Future moveCamera(LatLng latLng) async{
    await _mapService.moveCamera(latLng);
  }

  final CurrentLocationService _currentLocationService = locator<CurrentLocationService>();

  Future<LatLng> getCurrentLocation() async{
    LocationData currentLocation = await _currentLocationService.getCurrentLocation();
    return LatLng(currentLocation.latitude,currentLocation.longitude);
  }


}