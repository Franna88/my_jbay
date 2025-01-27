import 'package:flutter/material.dart';

import 'package:my_jbay/Tourist/TouristMainComponants/reusable_view_business_containers.dart';

class BusinessListing extends StatelessWidget {
  final List<Map<String, dynamic>> businesses;

  const BusinessListing({super.key, required this.businesses});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20.0,
      spacing: 20.0,
      children: businesses.map((business) {
        return ReusableViewBusinessContainers(
          imagePath: business['imagePath']!,
          title: business['title']!,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => business['page'] as Widget,
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
//           // Action for Specials business
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/events.png',
//         'title': 'events',
//         'onTap': () {
//           // Action for Specials business
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/kids.png',
//         'title': 'kids',
//         'onTap': () {
//           // Action for Specials business
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/markets.png',
//         'title': 'markets',
//         'onTap': () {
//           // Action for Specials business
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/municipality.png',
//         'title': 'municipality',
//         'onTap': () {
//           // Action for Specials business
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/music.png',
//         'title': 'music',
//         'onTap': () {
//           // Action for Specials business
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/outdoor.png',
//         'title': 'outdoor',
//         'onTap': () {
//           // Action for Specials business
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/shops.png',
//         'title': 'shops',
//         'onTap': () {
//           // Action for Specials business
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/waves.png',
//         'title': 'waves',
//         'onTap': () {
//           // Action for Specials business
//           // Leave empty for now
//         }
//       },
//       {
//         'imagePath': 'images/other.png',
//         'title': 'other',
//         'onTap': () {
//           // Action for Specials business
//           // Leave empty for now
//         }
//       },
//       // Add more categories as needed
//     ];
