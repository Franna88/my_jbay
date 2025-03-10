import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/art_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/JBayShops/jbay_shops.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/kids_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/markets_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/municipality_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/music_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/outdoor_page.dart';
import 'package:my_jbay/Tourist/Explore/Services/service_healthcare.dart';
import 'package:my_jbay/Tourist/Explore/Services/services_types.dart';
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
    // List of categories with imagePath, title, and unique onTap functionality
    final List<Map<String, dynamic>> categories = [
      {
        'imagePath': 'images/assorted.png',
        'title': 'assorted',
        'page': const ServicesTypes(
          title: 'Assorted',
        ),
      },
      {
        'imagePath': 'images/body_art.png',
        'title': 'body art',
        'page': const ServicesTypes(
          title: 'Body Art',
        ),
      },
      {
        'imagePath': 'images/building.png',
        'title': 'building',
        'page': const ServicesTypes(
          title: 'Building',
        ),
      },
      {
        'imagePath': 'images/car_wash.png',
        'title': 'carwash',
        'page': const ServicesTypes(
          title: 'Card Wash',
        ),
      },
      {
        'imagePath': 'images/cleaning.png',
        'title': 'cleaning',
        'page': const ServicesTypes(
          title: 'Cleaning',
        ),
      },
      {
        'imagePath': 'images/courier.png',
        'title': 'courier',
        'page': const ServicesTypes(
          title: 'Courier',
        ),
      },
      {
        'imagePath': 'images/dealership.png',
        'title': 'dealership',
        'page': const ServicesTypes(
          title: 'Dealerships',
        ),
      },
      {
        'imagePath': 'images/distributor.png',
        'title': 'distributor',
        'page': const ServicesTypes(
          title: 'Distributor',
        ),
      },
      {
        'imagePath': 'images/electrical.png',
        'title': 'electrical',
        'page': const ServicesTypes(
          title: 'Electrical',
        ),
      },
      {
        'imagePath': 'images/fitness.png',
        'title': 'fitness',
        'page': const ServicesTypes(
          title: 'Fitness',
        ),
      },
      {
        'imagePath': 'images/funeral.png',
        'title': 'funeral',
        'page': const ServicesTypes(
          title: 'Funeral',
        ),
      },
      {
        'imagePath': 'images/garden.png',
        'title': 'garden',
        'page': const ServicesTypes(
          title: 'Garden',
        ),
      },
      {
        'imagePath': 'images/hair.png',
        'title': 'hair',
        'page': const ServicesTypes(
          title: 'Hair',
        ),
      },
      {
        'imagePath': 'images/healthcare.png',
        'title': 'healthcare',
        'page': const ServiceHealthcare(),
      },
      {
        'imagePath': 'images/shuttle.png',
        'title': 'shuttle',
        'page': const ServicesTypes(
          title: 'Shuttle',
        ),
      },
      {
        'imagePath': 'images/laundry.png',
        'title': 'laundry',
        'page': const ServicesTypes(
          title: 'Laundry',
        ),
      },
      {
        'imagePath': 'images/mechanic.png',
        'title': 'mechanic',
        'page': const ServicesTypes(
          title: 'Mechanic',
        ),
      },
      {
        'imagePath': 'images/movers.png',
        'title': 'movers',
        'page': const ServicesTypes(
          title: 'Movers',
        ),
      },
      {
        'imagePath': 'images/pets.png',
        'title': 'pets',
        'page': const ServicesTypes(
          title: 'Pets',
        ),
      },
      {
        'imagePath': 'images/plumber.png',
        'title': 'plumber',
        'page': const ServicesTypes(
          title: 'Plumber',
        ),
      },
      {
        'imagePath': 'images/printing.png',
        'title': 'printing',
        'page': const ServicesTypes(
          title: 'Printing',
        ),
      },
      {
        'imagePath': 'images/professional.png',
        'title': 'professional',
        'page': const ServicesTypes(
          title: 'Professional',
        ),
      },
      {
        'imagePath': 'images/real_estate.png',
        'title': 'real estate',
        'page': const ServicesTypes(
          title: 'Real Estate',
        ),
      },
      {
        'imagePath': 'images/repairs.png',
        'title': 'repairs',
        'page': const ServicesTypes(
          title: 'Repairs',
        ),
      },
      {
        'imagePath': 'images/security.png',
        'title': 'security',
        'page': const ServicesTypes(
          title: 'Security',
        ),
      },
      {
        'imagePath': 'images/storage.png',
        'title': 'storage',
        'page': const ServicesTypes(
          title: 'Storage',
        ),
      },
      {
        'imagePath': 'images/technology.png',
        'title': 'technology',
        'page': const ServicesTypes(
          title: 'Technology',
        ),
      },
      {
        'imagePath': 'images/travel.png',
        'title': 'travel',
        'page': const ServicesTypes(
          title: 'Travel',
        ),
      },
      {
        'imagePath': 'images/venue.png',
        'title': 'venue',
        'page': const ServicesTypes(
          title: 'Venue',
        ),
      },
      {
        'imagePath': 'images/waste_removal.png',
        'title': 'waste removal',
        'page': const ServicesTypes(
          title: 'Waste Removal',
        ),
      },
      {
        'imagePath': 'images/other.png',
        'title': 'other',
        'page': const ServicesTypes(
          title: 'Other',
        ),
      },
      // Add more categories as needed
    ];

    return GreyContainerPageLayout(
        title: 'Services', bodyContent: CategoryList(categories: categories));
  }
}
