import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/custom_search_bar.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class Specials extends StatelessWidget {
  final String userName = 'Franna';
  const Specials({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        'title': 'food',
        'imagePath': 'images/food.png',
        'onTap': () {
          print('Tapped on Food');
          // Add more logic for "Food" category tap
        }
      },
      {
        'title': 'events',
        'imagePath': 'images/events.png',
        'onTap': () {
          print('Tapped on events');
          // Add more logic for "events" category tap
        }
      },
      {
        'title': 'shopping',
        'imagePath': 'images/shops.png',
        'onTap': () {
          print('Tapped on Drinks');
          // Add more logic for "Drinks" category tap
        }
      },
      {
        'title': 'activities',
        'imagePath': 'images/activities.png',
        'onTap': () {
          print('Tapped on activities');
          // Add more logic for "activities" category tap
        }
      },

      // Add more categories and unique onTap actions as needed
    ];

    return Scaffold(
      backgroundColor: Mycolors().lightGrey,
      body: SizedBox(
        width: MyUtility(context).width,
        height: MyUtility(context).height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                        width: MyUtility(context).width * 0.65,
                        child: CustomSearchBar()),
                    Spacer(),
                    Image.asset(
                      'images/myJbay_top_page_logo.png',
                      width: MyUtility(context).width * 0.3,
                      height: MyUtility(context).width * 0.2,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'SPECIALS ',
                                style:
                                    MyJbayTextstyle(context).yellowStyleHeader),
                            TextSpan(
                              text: 'for $userName!',
                              style: MyJbayTextstyle(context)
                                  .yellowStyleHeader
                                  .copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Horizontal scrolling containers at the top
                Container(
                  height: MyUtility(context).height * 0.14,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length, // Adjust as needed
                    itemBuilder: (context, index) {
                      var category = categories[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ReusableCategoryContainer(
                          title: category['title']!,
                          imagePath: category['imagePath']!,
                          onTap: category['onTap'],
                        ),
                      );
                    },
                  ),
                ),

                // Vertical scrolling containers underneath
                ListView.builder(
                  shrinkWrap:
                      true, // Ensures the list doesn't take all available space
                  physics:
                      NeverScrollableScrollPhysics(), // Prevents nested scrolling
                  itemCount: 20, // Adjust as needed
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        color:
                            Colors.green[(index + 1) * 100], // Just for example
                        child: Center(child: Text('Post ${index + 1}')),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
