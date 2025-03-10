import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/ViewBusinesses/business_listing.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/commanUi/DifferentBottomNavbars/nav_plain.dart';
import 'package:my_jbay/commanUi/DifferentBottomNavbars/nav_with_menu.dart';
import 'package:my_jbay/commanUi/DifferentBottomNavbars/nav_with_wave_map.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class BakerySweet extends StatelessWidget {
  const BakerySweet({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> business = [
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Bakery 1',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Bakery 2',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Bakery 3',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Bakery 4',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Bakery 5',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Bakery 6',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Bakery 7',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Bakery 8',
      },

      // Add more categories as needed
    ];
    // List of categories with imagePath, title, and unique onTap functionality

    return GreyContainerPageLayout(
        title: 'Bakery/Sweet',
        bodyContent: BusinessListing(
          businesses: business,
          onTap: () => NavWithMenu(),
        ));
  }
}
