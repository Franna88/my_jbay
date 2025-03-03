import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/about_tab.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/view_shop_navbar.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/ViewBusinesses/business_listing.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class ArtPage extends StatelessWidget {
  const ArtPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> business = [
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Art 1',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Art 2',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Art 3',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Art 4',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Art 5',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Art 6',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Art 7',
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Art 8',
      },

      // Add more categories as needed
    ];
    // List of categories with imagePath, title, and unique onTap functionality

    return GreyContainerPageLayout(
        title: 'Art',
        bodyContent: BusinessListing(
          businesses: business,
          onTap: () => ViewShopNavbar(),
        ));
  }
}
