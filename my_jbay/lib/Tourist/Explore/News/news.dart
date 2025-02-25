import 'package:flutter/material.dart';

import 'package:my_jbay/Tourist/Explore/News/news_container.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/custom_search_bar.dart';

import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/constants/myutility.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    // List of categories with title, title, and unique onTap functionality
    final List<Map<String, dynamic>> newsPost = [
      {
        'newsTitle': 'Whale season!',
        'author': 'Jbay News',
        'postContent':
            'Keep an eye out for whales as its the season for whale spotting. You will often see mama whales with their little babas crossing the bay and even putting on a show for you.',
      },
      {
        'newsTitle': 'Whale season!',
        'author': 'Jbay News',
        'postContent':
            'Keep an eye out for whales as its the season for whale spotting. You will often see mama whales with their little babas crossing the bay and even putting on a show for you. Keep an eye out for whales as its the season for whale spotting. You will often see mama whales with their little babas crossing the bay and even putting on a show for you.Keep an eye out for whales as its the season for whale spotting. You will often see mama whales with their little babas crossing the bay and even putting on a show for you.',
      },
    ];

    return GreyContainerPageLayout(
      title: 'News',
      bodyContent: SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              runSpacing: 20.0,
              spacing: 20.0,
              children: newsPost.map((newsPost) {
                return NewsContainer(
                  newsTitle: newsPost['newsTitle']!,
                  author: newsPost['author']!,
                  postContent: newsPost['postContent']!,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
