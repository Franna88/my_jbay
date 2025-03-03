import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/Specials/special_category_filter.dart';
import 'package:my_jbay/Tourist/Explore/Specials/special_post_containers.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/custom_search_bar.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class Specials extends StatefulWidget {
  const Specials({super.key});

  @override
  State<Specials> createState() => _SpecialsState();
}

class _SpecialsState extends State<Specials> {
  final String userName = 'Franna';
  String selectedCategory = 'all';

  // Categories List
  final List<Map<String, dynamic>> categories = [
    {'title': 'all', 'imagePath': 'images/myJbay_top_page_logo.png'},
    {'title': 'food', 'imagePath': 'images/food.png'},
    {'title': 'events', 'imagePath': 'images/events.png'},
    {'title': 'shopping', 'imagePath': 'images/shops.png'},
    {'title': 'activities', 'imagePath': 'images/activities.png'},
  ];

  // Specials List
  final List<Map<String, String>> specials = [
    {
      'imageUrl': 'images/event_paint.png',
      'specialTitle': 'Paint & Sip Night',
      'location': 'Art Café, Jeffreys Bay',
      'dateTime': 'March 25 - 6:00 PM',
      'category': 'events',
    },
    {
      'imageUrl': 'images/event_padel.png',
      'specialTitle': 'Dinner Special',
      'location': 'Seaside Grill',
      'dateTime': 'March 30 - 7:30 PM',
      'category': 'food',
    },
    {
      'imageUrl': 'images/event_paint.png',
      'specialTitle': 'Summer Sale 50% Off',
      'location': 'JBay Fashion Outlet',
      'dateTime': 'April 1 - All Day',
      'category': 'shopping',
    },
    {
      'imageUrl': 'images/event_padel.png',
      'specialTitle': 'Free Surf Lessons',
      'location': 'Main Beach, Jeffreys Bay',
      'dateTime': 'April 5 - 10:00 AM',
      'category': 'activities',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Filter specials based on selected category
    List<Map<String, String>> filteredSpecials = selectedCategory == 'all'
        ? specials
        : specials.where((s) => s['category'] == selectedCategory).toList();

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
                      child: CustomSearchBar(),
                    ),
                    const Spacer(),
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
                              style: MyJbayTextstyle(context).yellowStyleHeader,
                            ),
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
                // Horizontal scrolling categories
                SizedBox(
                  height: MyUtility(context).height * 0.13,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      var category = categories[index];
                      bool isSelected = selectedCategory == category['title'];

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = category['title']!;
                            });
                          },
                          child: SpecialCategoryFilter(
                            title: category['title']!,
                            imagePath: category['imagePath']!,
                            isSelected: isSelected, // Add this
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Vertical scrolling special post containers (Filtered)
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: filteredSpecials.length,
                  itemBuilder: (context, index) {
                    var special = filteredSpecials[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SpecialPostContainers(
                        imageUrl: special['imageUrl']!,
                        specialTitle: special['specialTitle']!,
                        location: special['location']!,
                        dateTime: special['dateTime']!,
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
  }
}
