import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/JobPost/reusable_jobpost_container.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/custom_search_bar.dart';

import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/constants/myutility.dart';

class JobPost extends StatelessWidget {
  const JobPost({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // List of categories with title, title, and unique onTap functionality
    final List<Map<String, dynamic>> categories = [
      {
        'title': 'Mechanic',
        'companyName': 'Auto Repairs',
        'details':
            'Looking for a hardworking mechanic! Looking for a hardworking mechanic!',
        'contactNumber': '0758363856',
        'address': '10th Avenue',
      },
      {
        'title': 'Mechanic',
        'companyName': 'Auto Repairs',
        'details':
            'Looking for a hardworking mechanic! Looking for a hardworking mechanic!',
        'contactNumber': '0758363856',
        'address': '10th Avenue',
      },
    ];

    return GreyContainerPageLayout(
      title: 'Jobs',
      bodyContent: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: MyUtility(context).width * 0.7,
                child: CustomSearchBar()),
            SizedBox(
              height: MyUtility(context).height * 0.02,
            ),
            Wrap(
              runSpacing: 20.0,
              spacing: 20.0,
              children: categories.map((jobPost) {
                return ReusableJobPostContainer(
                  jobTitle: jobPost['title']!,
                  companyName: jobPost['companyName']!,
                  details: jobPost['details']!,
                  contactNumber: jobPost['contactNumber']!,
                  address: jobPost['address']!,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
