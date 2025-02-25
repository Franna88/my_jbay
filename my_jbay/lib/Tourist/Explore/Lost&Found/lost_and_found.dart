import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/JobPost/reusable_jobpost_container.dart';
import 'package:my_jbay/Tourist/Explore/Lost&Found/lost_and_found_container.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/custom_search_bar.dart';

import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/constants/myutility.dart';

class LostAndFound extends StatelessWidget {
  const LostAndFound({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // List of categories with itemLost, itemLost, and unique onTap functionality
    final List<Map<String, dynamic>> categories = [
      {
        'itemLost': 'Car Keys',
        'details': 'Found lost car keys at point beach',
        'contactNumber': '0758363856',
      },
      {
        'itemLost': 'Car Keys',
        'details': 'Found lost car keys at point beach',
        'contactNumber': '0758363856',
      },
    ];

    return GreyContainerPageLayout(
      title: 'Lost & Found',
      bodyContent: SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              runSpacing: 20.0,
              spacing: 20.0,
              children: categories.map((jobPost) {
                return LostAndFoundContainer(
                  itemLost: jobPost['itemLost']!,
                  details: jobPost['details']!,
                  contactNumber: jobPost['contactNumber']!,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
