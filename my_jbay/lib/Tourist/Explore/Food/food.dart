import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/art_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/jbay_shops.dart';
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

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // List of categories with imagePath, title, and unique onTap functionality
    final List<Map<String, dynamic>> categories = [
      {
        'imagePath': 'images/bakerysweet.png',
        'title': 'bakery/sweet',
        'page': () {},
      },
      {
        'imagePath': 'images/sitdown.png',
        'title': 'sit down',
        'page': () {},
      },
      {
        'imagePath': 'images/takeaway.png',
        'title': 'take away',
        'page': () {},
      },
      {
        'imagePath': 'images/coffee.png',
        'title': 'coffee',
        'page': () {},
      },
      {
        'imagePath': 'images/deli.png',
        'title': 'deli',
        'page': () {},
      },
      {
        'imagePath': 'images/drinks.png',
        'title': 'drinks',
        'page': () {},
      },
      {
        'imagePath': 'images/delivery.png',
        'title': 'delivery',
        'page': () {},
      },
      {
        'imagePath': 'images/catering.png',
        'title': 'catering',
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
        title: 'Food', bodyContent: CategoryList(categories: categories));
  }
}
