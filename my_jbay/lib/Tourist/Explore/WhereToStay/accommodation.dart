import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/art_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/JBayShops/jbay_shops.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/kids_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/markets_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/municipality_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/music_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/outdoor_page.dart';
import 'package:my_jbay/Tourist/Explore/WhereToStay/AccommodationPageTypes/back_packers.dart';
import 'package:my_jbay/Tourist/Explore/WhereToStay/AccommodationPageTypes/camp.dart';
import 'package:my_jbay/Tourist/Explore/WhereToStay/AccommodationPageTypes/guest_house.dart';
import 'package:my_jbay/Tourist/Explore/WhereToStay/AccommodationPageTypes/holiday_house.dart';
import 'package:my_jbay/Tourist/Explore/WhereToStay/AccommodationPageTypes/hotel.dart';
import 'package:my_jbay/Tourist/Explore/WhereToStay/AccommodationPageTypes/lodge.dart';
import 'package:my_jbay/Tourist/Explore/WhereToStay/AccommodationPageTypes/other_accommodation.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class Accommodation extends StatelessWidget {
  const Accommodation({super.key});

  @override
  Widget build(BuildContext context) {
    // List of categories with imagePath, title, and unique onTap functionality
    final List<Map<String, dynamic>> categories = [
      {
        'imagePath': 'images/backpackers.png',
        'title': 'backpackers',
        'page': BackPackers()
      },
      {'imagePath': 'images/camp.png', 'title': 'camp', 'page': Camp()},
      {
        'imagePath': 'images/guest_house.png',
        'title': 'guesthouse',
        'page': GuestHouse()
      },
      {
        'imagePath': 'images/holiday_house.png',
        'title': 'holiday house',
        'page': HolidayHouse()
      },
      {'imagePath': 'images/hotel.png', 'title': 'hotel', 'page': Hotel()},
      {'imagePath': 'images/lodge.png', 'title': 'lodge', 'page': Lodge()},
      {
        'imagePath': 'images/other.png',
        'title': 'other',
        'page': OtherAccommodation()
      },
      // Add more categories as needed
    ];

    return GreyContainerPageLayout(
        title: 'Accommodation',
        bodyContent: CategoryList(
          categories: categories,
        ));
  }
}
