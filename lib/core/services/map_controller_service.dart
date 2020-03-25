
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:push_notification/core/constants/constants.dart';

class MapControllerService {
  GoogleMapController _mapController ;

  void setMapController(GoogleMapController controller){
    _mapController = controller;
  }

  GoogleMapController get mapController => _mapController;

  Future moveCamera(LatLng latLng) async{
    await _mapController.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(target: latLng,zoom: ZoomLevel)));
  }

}