import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/art_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/JBayShops/jbay_shops.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/kids_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/markets_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/municipality_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/music_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/outdoor_page.dart';
import 'package:my_jbay/Tourist/Explore/LocalLiving/local_living_types.dart';
import 'package:my_jbay/Tourist/Explore/Services/services_types.dart';
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
        'page': const LocalLivingTypes(
          title: 'Creative',
        ),
      },
      {
        'imagePath': 'images/worship.png',
        'title': 'worship',
        'page': const LocalLivingTypes(
          title: 'Worship',
        ),
      },
      {
        'imagePath': 'images/kids.png',
        'title': 'custom made',
        'page': const LocalLivingTypes(
          title: 'Custom Made',
        ),
      },
      {
        'imagePath': 'images/hand_made.png',
        'title': 'hand made',
        'page': const LocalLivingTypes(
          title: 'Hand Made',
        ),
      },
      {
        'imagePath': 'images/lessons.png',
        'title': 'lessons',
        'page': const LocalLivingTypes(
          title: 'Lessons',
        ),
      },
      {
        'imagePath': 'images/npo.png',
        'title': 'NPO',
        'page': const LocalLivingTypes(
          title: 'NPO',
        ),
      },
      {
        'imagePath': 'images/outdoor.png',
        'title': 'training',
        'page': const LocalLivingTypes(
          title: 'Training',
        ),
      },
      {
        'imagePath': 'images/schools.png',
        'title': 'schools',
        'page': const LocalLivingTypes(
          title: 'Schools',
        ),
      },
      {
        'imagePath': 'images/clubs.png',
        'title': 'clubs',
        'page': const LocalLivingTypes(
          title: 'Clubs',
        ),
      },
      {
        'imagePath': 'images/other.png',
        'title': 'other',
        'page': const LocalLivingTypes(
          title: 'Other',
        ),
      },
      // Add more categories as needed
    ];

    return GreyContainerPageLayout(
        title: 'Local Living',
        bodyContent: CategoryList(categories: categories));
  }
}
