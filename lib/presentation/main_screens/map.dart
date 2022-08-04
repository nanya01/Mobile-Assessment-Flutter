import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile_assessment_flutter/presentation/widgets/app_textfield.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition = CameraPosition(
      target: LatLng(5.5096, 7.0391), zoom: 11.5); // 37.773927, -122.4312927
  GoogleMapController? _googleMapController;
  Marker? origin;
  Marker? _destination;
  addMarker(LatLng pos) {
    origin = Marker(
        markerId: const MarkerId("Origin"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        position: pos);
  }

  @override
  void initState() {
    // TODO: implement initState
    addMarker(const LatLng(5.5096, 7.0391));
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _googleMapController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            child: AppTextField(
              hintText: "Hello",
            ),
          ),
          GoogleMap(
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (controller) => _googleMapController = controller,
            markers: {
              origin!,
            },
          ),
        ],
      ),
    );
  }
}
