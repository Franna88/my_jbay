import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/ViewBusinesses/business_listing.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> business = [
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Music 1',
        'page': const MusicPage(),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Music 2',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Music 3',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Music 4',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Music 5',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Music 6',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Music 7',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/business_listing.png',
        'title': 'Music 8',
        'page': const Center(child: Text('Link Page')),
      },

      // Add more categories as needed
    ];
    // List of categories with imagePath, title, and unique onTap functionality

    return GreyContainerPageLayout(
        title: 'Music', bodyContent: BusinessListing(businesses: business));
  }
}
