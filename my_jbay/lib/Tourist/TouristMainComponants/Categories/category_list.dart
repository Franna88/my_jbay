import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';

class CategoryList extends StatelessWidget {
  final List<Map<String, dynamic>> categories;

  const CategoryList({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
    );
  }
}


//define list in parent file like so...

// final List<Map<String, dynamic>> categories = [
//       {
//         'imagePath': 'images/art.png',
//         'title': 'art',
//         'onTap': () {
//           // Action for Specials category
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/events.png',
//         'title': 'events',
//         'onTap': () {
//           // Action for Specials category
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/kids.png',
//         'title': 'kids',
//         'onTap': () {
//           // Action for Specials category
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/markets.png',
//         'title': 'markets',
//         'onTap': () {
//           // Action for Specials category
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/municipality.png',
//         'title': 'municipality',
//         'onTap': () {
//           // Action for Specials category
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/music.png',
//         'title': 'music',
//         'onTap': () {
//           // Action for Specials category
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/outdoor.png',
//         'title': 'outdoor',
//         'onTap': () {
//           // Action for Specials category
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/shops.png',
//         'title': 'shops',
//         'onTap': () {
//           // Action for Specials category
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/waves.png',
//         'title': 'waves',
//         'onTap': () {
//           // Action for Specials category
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/other.png',
//         'title': 'other',
//         'onTap': () {
//           // Action for Specials category
//           // Leave empty for now
//         }
//       },
//       // Add more categories as needed
//     ];
