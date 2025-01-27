import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/ViewBusinesses/business_listing.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class KidsPage extends StatelessWidget {
  const KidsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> business = [
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Kids 1',
        'page': const KidsPage(),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Kids 2',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Kids 3',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Kids 4',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Kids 5',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Kids 6',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Kids 7',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Kids 8',
        'page': const Center(child: Text('Link Page')),
      },

      // Add more categories as needed
    ];
    // List of categories with imagePath, title, and unique onTap functionality

    return GreyContainerPageLayout(
        title: 'Kids', bodyContent: BusinessListing(businesses: business));
  }
}
