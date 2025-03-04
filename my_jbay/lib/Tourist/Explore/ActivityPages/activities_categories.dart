import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/art_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/EventPage/events_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/JBayShops/jbay_shops.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/kids_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/markets_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/municipality_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/music_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/other_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/outdoor_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/waves_page.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class ActivitiesCategories extends StatelessWidget {
  const ActivitiesCategories({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // List of categories with imagePath, title, and unique onTap functionality
    final List<Map<String, dynamic>> categories = [
      {
        'imagePath': 'images/art.png',
        'title': 'art',
        'page': const ArtPage(),
      },
      {
        'imagePath': 'images/events.png',
        'title': 'events',
        'page': const EventsPage(),
      },
      {
        'imagePath': 'images/kids.png',
        'title': 'kids',
        'page': const KidsPage(),
      },
      {
        'imagePath': 'images/markets.png',
        'title': 'markets',
        'page': const MarketsPage(),
      },
      {
        'imagePath': 'images/municipality.png',
        'title': 'municipality',
        'page': const MunicipalityPage(),
      },
      {
        'imagePath': 'images/music.png',
        'title': 'music',
        'page': const MusicPage(),
      },
      {
        'imagePath': 'images/outdoor.png',
        'title': 'outdoor',
        'page': const OutdoorPage(),
      },
      {
        'imagePath': 'images/shops.png',
        'title': 'shops',
        'page': const JbayShops(),
      },
      {
        'imagePath': 'images/waves.png',
        'title': 'waves',
        'page': const WavesPage(),
      },
      {
        'imagePath': 'images/other.png',
        'title': 'other',
        'page': const OtherPage(),
      },
      // Add more categories as needed
    ];

    return GreyContainerPageLayout(
        title: 'Activities', bodyContent: CategoryList(categories: categories));
  }
}
