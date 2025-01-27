import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/art_page.dart';
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

class JbayShops extends StatelessWidget {
  const JbayShops({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // List of categories with imagePath, title, and unique onTap functionality
    final List<Map<String, dynamic>> categories = [
      {
        'imagePath': 'images/clothing.png',
        'title': 'clothing',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/fishing.png',
        'title': 'fishing',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/butchery.png',
        'title': 'butchery',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/buy_&_sell.png',
        'title': 'buy & sell',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/water.png',
        'title': 'water',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/wellness.png',
        'title': 'wellness',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/toys.png',
        'title': 'toys',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/baby_&_kids.png',
        'title': 'baby & kids',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/bake.png',
        'title': 'bake',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/bicycle.png',
        'title': 'bicycle',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/books.png',
        'title': 'books',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/crafts_&_gifts.png',
        'title': 'crafts & gifts',
        'page': const Center(child: Text('Link Page')),
      },
      // Add more categories as needed
    ];

    return GreyContainerPageLayout(
        title: 'Jbay Shops', bodyContent: CategoryList(categories: categories));
  }
}
