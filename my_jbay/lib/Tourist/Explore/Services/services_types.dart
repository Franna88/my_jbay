import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/ViewBusinesses/business_listing.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/commanUi/DifferentBottomNavbars/nav_plain.dart';
import 'package:my_jbay/commanUi/DifferentBottomNavbars/nav_with_wave_map.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class ServicesTypes extends StatelessWidget {
  final String title;
  const ServicesTypes({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> business = [
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Service 1',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Service 2',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Service 3',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Service 4',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Service 5',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Service 6',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Service 7',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Service 8',
      },

      // Add more categories as needed
    ];
    // List of categories with imagePath, title, and unique onTap functionality

    return GreyContainerPageLayout(
        title: title,
        bodyContent: BusinessListing(
          businesses: business,
          onTap: () => NavbarPlain(),
        ));
  }
}
