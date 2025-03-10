import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/art_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/JBayShops/jbay_shops.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/kids_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/markets_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/municipality_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/music_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/outdoor_page.dart';
import 'package:my_jbay/Tourist/Explore/Food/FoodTypes/bakery_sweet.dart';
import 'package:my_jbay/Tourist/Explore/Food/FoodTypes/catering.dart';
import 'package:my_jbay/Tourist/Explore/Food/FoodTypes/coffee.dart';
import 'package:my_jbay/Tourist/Explore/Food/FoodTypes/deli.dart';
import 'package:my_jbay/Tourist/Explore/Food/FoodTypes/delivery.dart';
import 'package:my_jbay/Tourist/Explore/Food/FoodTypes/drinks.dart';
import 'package:my_jbay/Tourist/Explore/Food/FoodTypes/other_food.dart';
import 'package:my_jbay/Tourist/Explore/Food/FoodTypes/sit_down.dart';
import 'package:my_jbay/Tourist/Explore/Food/FoodTypes/take_away.dart';
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
    // List of categories with imagePath, title, and unique onTap functionality
    final List<Map<String, dynamic>> categories = [
      {
        'imagePath': 'images/bakerysweet.png',
        'title': 'bakery/sweet',
        'page': BakerySweet(),
      },
      {
        'imagePath': 'images/sitdown.png',
        'title': 'sit down',
        'page': SitDown(),
      },
      {
        'imagePath': 'images/takeaway.png',
        'title': 'take away',
        'page': TakeAway(),
      },
      {
        'imagePath': 'images/coffee.png',
        'title': 'coffee',
        'page': Coffee(),
      },
      {
        'imagePath': 'images/deli.png',
        'title': 'deli',
        'page': Deli(),
      },
      {
        'imagePath': 'images/drinks.png',
        'title': 'drinks',
        'page': Drinks(),
      },
      {
        'imagePath': 'images/delivery.png',
        'title': 'delivery',
        'page': Delivery(),
      },
      {
        'imagePath': 'images/catering.png',
        'title': 'catering',
        'page': Catering(),
      },
      {
        'imagePath': 'images/other.png',
        'title': 'other',
        'page': OtherFood(),
      },
      // Add more categories as needed
    ];

    return GreyContainerPageLayout(
        title: 'Food', bodyContent: CategoryList(categories: categories));
  }
}
