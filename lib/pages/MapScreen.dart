import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';
class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LatLng addressLocation = LatLng(34.745006151318506,10.759186647715664);
    final Set<Marker> markers = {
      Marker(markerId: MarkerId('AIzaSyDcljlTaLnuSPwP_qhbD_ESptQiHYPvpck'), position: addressLocation,infoWindow: InfoWindow(title:'sfax'),),
    };
    return Scaffold(appBar: AppBar(title: Text('Adresse Professionnelle'.tr), backgroundColor: Colors.cyan, centerTitle: true,
      ),
      body: GoogleMap(initialCameraPosition: CameraPosition(target: addressLocation, zoom: 15.0,
        ),
        markers: markers,
      ),
    );
  }
}
