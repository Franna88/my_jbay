import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ExplorePageCategories/ActivityPages/activities_categories.dart';
import 'package:my_jbay/commanUi/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class TouristExplore extends StatelessWidget {
  const TouristExplore({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // List of categories with imagePath, title, and page for navigation
    final List<Map<String, dynamic>> categories = [
      {
        'imagePath': 'images/specials.png',
        'title': 'Specials',
        'page': const Center(child: Text('Specials Page')),
      },
      {
        'imagePath': 'images/activities.png',
        'title': 'Activities',
        'page': const ActivitiesCategories(),
      },
      {
        'imagePath': 'images/where_to_stay.png',
        'title': 'Where to Stay',
        'page': const Center(child: Text('Where to Stay Page')),
      },
      {
        'imagePath': 'images/food.png',
        'title': 'Food',
        'page': const Center(child: Text('Food Page')),
      },
      {
        'imagePath': 'images/news.png',
        'title': 'News',
        'page': const Center(child: Text('News Page')),
      },
      {
        'imagePath': 'images/services.png',
        'title': 'Services',
        'page': const Center(child: Text('Services Page')),
      },
      {
        'imagePath': 'images/lost.png',
        'title': 'Lost',
        'page': const Center(child: Text('Lost Page')),
      },
      {
        'imagePath': 'images/jobs.png',
        'title': 'Jobs',
        'page': const Center(child: Text('Jobs Page')),
      },
      {
        'imagePath': 'images/911.png',
        'title': '911',
        'page': const Center(child: Text('911 Page')),
      },
      {
        'imagePath': 'images/local.png',
        'title': 'Local',
        'page': const Center(child: Text('Local Page')),
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MyUtility(context).width,
        height: MyUtility(context).height,
        child: Center(
          child: Stack(
            children: [
              // Grey container background
              Positioned(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MyUtility(context).width,
                      height: MyUtility(context).height * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        color: Mycolors().lightGrey,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: screenWidth * 0.05,
                right: screenWidth * 0.05,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight * 0.15,
                        width: screenWidth * 0.4,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/myJbay_logo_cutoff.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      // Everything Local container
                      ReusablePageTitle(
                          title: 'Everything Local',
                          backgroundColor: Mycolors().blue),
                      const SizedBox(height: 30),
                      // Generate ReusableCategoryContainer widgets dynamically
                      Wrap(
                        runSpacing: 20.0,
                        spacing: 20.0,
                        children: categories.map((category) {
                          return ReusableCategoryContainer(
                            imagePath: category['imagePath']!,
                            title: category['title']!,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => category['page'] as Widget,
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
