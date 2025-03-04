import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/JBayShops/jbay_type.dart';
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
    // Define base category data as a list of [imagePath, title] pairs
    final List<List<String>> categoryData = [
      ['images/clothing.png', 'clothing'],
      ['images/fishing.png', 'fishing'],
      ['images/butchery.png', 'butchery'],
      ['images/buy_&_sell.png', 'buy & sell'],
      ['images/water.png', 'water'],
      ['images/wellness.png', 'wellness'],
      ['images/toys.png', 'toys'],
      ['images/baby_&_kids.png', 'baby & kids'],
      ['images/bake.png', 'bake'],
      ['images/bicycle.png', 'bicycle'],
      ['images/books.png', 'books'],
      ['images/crafts_&_gifts.png', 'crafts & gifts'],
    ];

    // Map to full category structure with ShopType page
    final List<Map<String, dynamic>> categories = categoryData
        .map((data) => {
              'imagePath': data[0],
              'title': data[1],
              'page': const ShopTypePage(),
            })
        .toList();

    return GreyContainerPageLayout(
      title: 'Jbay Shops',
      bodyContent: CategoryList(categories: categories),
    );
  }
}
