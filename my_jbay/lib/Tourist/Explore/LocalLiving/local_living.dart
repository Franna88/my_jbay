import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/art_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/jbay_shops.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/kids_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/markets_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/municipality_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/music_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/outdoor_page.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';

import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';

class LocalLiving extends StatelessWidget {
  const LocalLiving({super.key});

  @override
  Widget build(BuildContext context) {
    // List of categories with imagePath, title, and unique onTap functionality
    final List<Map<String, dynamic>> categories = [
      {
        'imagePath': 'images/creative.png',
        'title': 'creative',
        'page': () {},
      },
      {
        'imagePath': 'images/worship.png',
        'title': 'worship',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/kids.png',
        'title': 'custom made',
        'page': const KidsPage(),
      },
      {
        'imagePath': 'images/hand_made.png',
        'title': 'hand made',
        'page': const MarketsPage(),
      },
      {
        'imagePath': 'images/lessons.png',
        'title': 'lessons',
        'page': const MunicipalityPage(),
      },
      {
        'imagePath': 'images/npo.png',
        'title': 'NPO',
        'page': const MusicPage(),
      },
      {
        'imagePath': 'images/outdoor.png',
        'title': 'training',
        'page': const OutdoorPage(),
      },
      {
        'imagePath': 'images/schools.png',
        'title': 'schools',
        'page': const JbayShops(),
      },
      {
        'imagePath': 'images/clubs.png',
        'title': 'clubs',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/other.png',
        'title': 'other',
        'page': const Center(child: Text('Link Page')),
      },
      // Add more categories as needed
    ];

    return GreyContainerPageLayout(
        title: 'Local Living',
        bodyContent: CategoryList(categories: categories));
  }
}
