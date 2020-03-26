
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerService{

  Future<Uint8List> getBytesFromAsset(String path, int width) async{
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),targetWidth: width);
    print(codec.frameCount.toString() +" getBytesFromAsset");
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png)).buffer.asUint8List();
  }

   Future<BitmapDescriptor> getMarker(String asset) async{
    Uint8List markerIcon = await getBytesFromAsset(asset, 100);
    return BitmapDescriptor.fromBytes(markerIcon); 
  }

}