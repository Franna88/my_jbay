import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/art_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/JBayShops/jbay_shops.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/kids_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/markets_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/municipality_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/music_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/outdoor_page.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class Accommodation extends StatelessWidget {
  const Accommodation({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // List of categories with imagePath, title, and unique onTap functionality
    final List<Map<String, dynamic>> categories = [
      {
        'imagePath': 'images/backpackers.png',
        'title': 'backpackers',
        'page': () {},
      },
      {
        'imagePath': 'images/camp.png',
        'title': 'camp',
        'page': () {},
      },
      {
        'imagePath': 'images/guest_house.png',
        'title': 'guesthouse',
        'page': () {},
      },
      {
        'imagePath': 'images/holiday_house.png',
        'title': 'holidayhouse',
        'page': () {},
      },
      {
        'imagePath': 'images/hotel.png',
        'title': 'hotel',
        'page': () {},
      },
      {
        'imagePath': 'images/lodge.png',
        'title': 'lodge',
        'page': () {},
      },
      {
        'imagePath': 'images/other.png',
        'title': 'other',
        'page': () {},
      },
      // Add more categories as needed
    ];

    return GreyContainerPageLayout(
        title: 'Accommodation',
        bodyContent: CategoryList(categories: categories));
  }
}
