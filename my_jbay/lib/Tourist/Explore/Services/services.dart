import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/art_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/JBayShops/jbay_shops.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/kids_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/markets_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/municipality_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/music_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/outdoor_page.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // List of categories with imagePath, title, and unique onTap functionality
    final List<Map<String, dynamic>> categories = [
      {
        'imagePath': 'images/assorted.png',
        'title': 'assorted',
        'page': () {},
      },
      {
        'imagePath': 'images/body_art.png',
        'title': 'body art',
        'page': () {},
      },
      {
        'imagePath': 'images/building.png',
        'title': 'building',
        'page': () {},
      },
      {
        'imagePath': 'images/car_wash.png',
        'title': 'carwash',
        'page': () {},
      },
      {
        'imagePath': 'images/cleaning.png',
        'title': 'cleaning',
        'page': () {},
      },
      {
        'imagePath': 'images/courier.png',
        'title': 'courier',
        'page': () {},
      },
      {
        'imagePath': 'images/dealership.png',
        'title': 'dealership',
        'page': () {},
      },
      {
        'imagePath': 'images/distributor.png',
        'title': 'distributor',
        'page': () {},
      },
      {
        'imagePath': 'images/electrical.png',
        'title': 'electrical',
        'page': () {},
      },
      {
        'imagePath': 'images/fitness.png',
        'title': 'fitness',
        'page': () {},
      },
      {
        'imagePath': 'images/funeral.png',
        'title': 'funeral',
        'page': () {},
      },
      {
        'imagePath': 'images/garden.png',
        'title': 'garden',
        'page': () {},
      },
      {
        'imagePath': 'images/hair.png',
        'title': 'hair',
        'page': () {},
      },
      {
        'imagePath': 'images/healthcare.png',
        'title': 'healthcare',
        'page': () {},
      },
      {
        'imagePath': 'images/shuttle.png',
        'title': 'shuttle',
        'page': () {},
      },
      {
        'imagePath': 'images/laundry.png',
        'title': 'laundry',
        'page': () {},
      },
      {
        'imagePath': 'images/mechanic.png',
        'title': 'mechanic',
        'page': () {},
      },
      {
        'imagePath': 'images/movers.png',
        'title': 'movers',
        'page': () {},
      },
      {
        'imagePath': 'images/pets.png',
        'title': 'pets',
        'page': () {},
      },
      {
        'imagePath': 'images/plumber.png',
        'title': 'plumber',
        'page': () {},
      },
      {
        'imagePath': 'images/printing.png',
        'title': 'printing',
        'page': () {},
      },
      {
        'imagePath': 'images/professional.png',
        'title': 'professional',
        'page': () {},
      },
      {
        'imagePath': 'images/real_estate.png',
        'title': 'real estate',
        'page': () {},
      },
      {
        'imagePath': 'images/repairs.png',
        'title': 'repairs',
        'page': () {},
      },
      {
        'imagePath': 'images/security.png',
        'title': 'security',
        'page': () {},
      },
      {
        'imagePath': 'images/storage.png',
        'title': 'storage',
        'page': () {},
      },
      {
        'imagePath': 'images/technology.png',
        'title': 'technology',
        'page': () {},
      },
      {
        'imagePath': 'images/travel.png',
        'title': 'travel',
        'page': () {},
      },
      {
        'imagePath': 'images/venue.png',
        'title': 'venue',
        'page': () {},
      },
      {
        'imagePath': 'images/waste_removal.png',
        'title': 'waste removal',
        'page': () {},
      },
      {
        'imagePath': 'images/other.png',
        'title': 'other',
        'page': () {},
      },
      // Add more categories as needed
    ];

    return GreyContainerPageLayout(
        title: 'Services', bodyContent: CategoryList(categories: categories));
  }
}
