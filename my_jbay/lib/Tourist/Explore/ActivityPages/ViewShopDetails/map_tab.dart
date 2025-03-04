import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/ViewBusinesses/business_listing.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class MapTab extends StatefulWidget {
  const MapTab({super.key});

  @override
  State<MapTab> createState() => _MapTabState();
}

class _MapTabState extends State<MapTab> {
  late GoogleMapController _mapController;

  // Define the business location (e.g., Jeffrey’s Bay, South Africa)
  static const LatLng _businessLocation =
      LatLng(-34.0507, 24.9216); // Example coordinates

  // Set initial camera position
  static const CameraPosition _initialPosition = CameraPosition(
    target: _businessLocation,
    zoom: 15.0, // Zoom level to show the business clearly
  );

  // Define a marker for the business
  final Set<Marker> _markers = {
    const Marker(
      markerId: MarkerId('businessLocation'),
      position: _businessLocation,
      infoWindow: InfoWindow(
        title: 'Sample Business',
        snippet: 'Jeffrey’s Bay',
      ),
    ),
  };

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GreyContainerPageLayout(
      title: 'Map',
      bodyContent: SizedBox(
        height: MyUtility(context).height * 0.7, // Adjust height as needed
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: _initialPosition,
          markers: _markers,
          myLocationEnabled: true, // Optional: Show user’s location
          myLocationButtonEnabled: true, // Optional: Show "My Location" button
        ),
      ),
      // Placeholder(),
    );
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }
}
