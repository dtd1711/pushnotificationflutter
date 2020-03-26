import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:push_notification/core/constants/constants.dart';
import 'package:push_notification/core/view_models/map_view_model.dart';
import 'package:push_notification/ui/views/base_view.dart';
import 'package:push_notification/core/models/coffee.dart';
class MapView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MapViewState();
  }
}
class MapViewState extends State<MapView>{
  
  @override
  Widget build(BuildContext context) {
    return BaseView<MapViewModel>(
     
      builder: (context,model,child){
        return Scaffold(
          body: GoogleMap(
            initialCameraPosition: CameraPosition(target: LatLng(10.7949, 106.7214),zoom: ZoomLevel),
            onMapCreated: (controller) async{
              model.setController(controller);
              model.moveCamera(await model.getCurrentLocation());
              model.setMarkers(coffeeShops);
            },
            markers: Set.from(model.markers ?? []),
          ),
          floatingActionButton: IconButton(
            icon: Icon(
              Icons.my_location,
              size: 32.0,
            ), 
            onPressed: () async{
              LatLng currentLocation = await model.getCurrentLocation();
              await model.moveCamera(currentLocation);
            }
          )
        ); 
      },
    );
  }
}