import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ExplorePageCategories/art_page.dart';
import 'package:my_jbay/commanUi/back_button_and_logo.dart';
import 'package:my_jbay/commanUi/category_list.dart';
import 'package:my_jbay/commanUi/reusable_category_container.dart';
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
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/kids.png',
        'title': 'kids',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/markets.png',
        'title': 'markets',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/municipality.png',
        'title': 'municipality',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/music.png',
        'title': 'music',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/outdoor.png',
        'title': 'outdoor',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/shops.png',
        'title': 'shops',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/waves.png',
        'title': 'waves',
        'page': const Center(child: Text('Link Page')),
      },
      {
        'imagePath': 'images/other.png',
        'title': 'other',
        'page': const Center(child: Text('Link Page')),
      },
      // Add more categories as needed
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          children: [
            // Top section with Icon and Centered Logo
            BackButtonAndLogo(),
            // Bottom section with categories
            Expanded(
              child: Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Mycolors().lightGrey,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: ReusablePageTitle(
                          title: 'Activities',
                          backgroundColor: Mycolors().yellow),
                    ),
                    CategoryList(categories: categories)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
