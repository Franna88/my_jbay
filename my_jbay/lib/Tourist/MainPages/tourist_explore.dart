import 'package:flutter/material.dart';
import 'package:my_jbay/commanUi/reusable_category_container.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class TouristExplore extends StatelessWidget {
  const TouristExplore({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // List of categories with imagePath, title, and unique onTap functionality
    final List<Map<String, dynamic>> categories = [
      {
        'imagePath': 'images/specials.png',
        'title': 'Specials',
        'onTap': () {
          // Action for Specials category
          print('Specials tapped');
        }
      },
      {
        'imagePath': 'images/activities.png',
        'title': 'Activities',
        'onTap': () {
          // Action for Activities category
          print('Activities tapped');
        }
      },
      {
        'imagePath': 'images/where_to_stay.png',
        'title': 'Where to Stay',
        'onTap': () {
          // Action for Where to Stay category
          print('Where to Stay tapped');
        }
      },
      {
        'imagePath': 'images/food.png',
        'title': 'Food',
        'onTap': () {
          // Action for Food category
          print('Food tapped');
        }
      },
      {
        'imagePath': 'images/news.png',
        'title': 'News',
        'onTap': () {
          // Action for News category
          print('News tapped');
        }
      },
      {
        'imagePath': 'images/services.png',
        'title': 'Services',
        'onTap': () {
          // Action for Services category
          print('Services tapped');
        }
      },
      {
        'imagePath': 'images/lost.png',
        'title': 'Lost',
        'onTap': () {
          // Action for Lost category
          print('Lost tapped');
        }
      },
      {
        'imagePath': 'images/jobs.png',
        'title': 'Jobs',
        'onTap': () {
          // Action for Jobs category
          print('Jobs tapped');
        }
      },
      {
        'imagePath': 'images/911.png',
        'title': '911',
        'onTap': () {
          // Action for 911 category
          print('911 tapped');
        }
      },
      {
        'imagePath': 'images/local.png',
        'title': 'Local',
        'onTap': () {
          // Action for Local category
          print('Local tapped');
        }
      },
      // Add more categories as needed
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
                      Container(
                        width: screenWidth * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Mycolors().blue,
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              'Everything Local',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'BmHanna',
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Generate ReusableCategoryContainer widgets dynamically
                      Wrap(
                        runSpacing: 20.0,
                        spacing: 20.0,
                        children: categories.map((category) {
                          return ReusableCategoryContainer(
                            imagePath: category['imagePath']!,
                            title: category['title']!,
                            onTap: category['onTap'] as VoidCallback,
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
