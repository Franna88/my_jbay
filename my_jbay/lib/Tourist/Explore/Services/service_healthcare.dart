import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/art_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/JBayShops/jbay_shops.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/kids_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/markets_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/municipality_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/music_page.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/outdoor_page.dart';
import 'package:my_jbay/Tourist/Explore/Services/services_types.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class ServiceHealthcare extends StatelessWidget {
  const ServiceHealthcare({super.key});

  @override
  Widget build(BuildContext context) {
    // List of categories with imagePath, title, and unique onTap functionality
    final List<Map<String, dynamic>> categories = [
      {
        'imagePath': 'images/audiologist.png',
        'title': 'audiologist',
        'page': const ServicesTypes(
          title: 'Audiologist',
        ),
      },
      {
        'imagePath': 'images/children.png',
        'title': 'children',
        'page': const ServicesTypes(
          title: 'Children',
        ),
      },
      {
        'imagePath': 'images/clinic.png',
        'title': 'clinic',
        'page': const ServicesTypes(
          title: 'Clinic',
        ),
      },
      {
        'imagePath': 'images/dentist.png',
        'title': 'dentist',
        'page': const ServicesTypes(
          title: 'Dentist',
        ),
      },
      {
        'imagePath': 'images/gp.png',
        'title': 'gp',
        'page': const ServicesTypes(
          title: 'GP',
        ),
      },
      {
        'imagePath': 'images/gynaecologist.png',
        'title': 'gynaecologist',
        'page': const ServicesTypes(
          title: 'Gynaecologist',
        ),
      },
      {
        'imagePath': 'images/holistic.png',
        'title': 'holistic',
        'page': const ServicesTypes(
          title: 'Holistic',
        ),
      },
      {
        'imagePath': 'images/mental.png',
        'title': 'mental',
        'page': const ServicesTypes(
          title: 'Mental',
        ),
      },
      {
        'imagePath': 'images/movement.png',
        'title': 'movement',
        'page': const ServicesTypes(
          title: 'Movement',
        ),
      },
      {
        'imagePath': 'images/nutritionist.png',
        'title': 'nutritionist',
        'page': const ServicesTypes(
          title: 'Nutritionist',
        ),
      },
      {
        'imagePath': 'images/optometrist.png',
        'title': 'optometrist',
        'page': const ServicesTypes(
          title: 'Optometrist',
        ),
      },
      {
        'imagePath': 'images/pharmacy.png',
        'title': 'pharmacy',
        'page': const ServicesTypes(
          title: 'Pharmacy',
        ),
      },
      {
        'imagePath': 'images/radiology.png',
        'title': 'radiology',
        'page': const ServicesTypes(
          title: 'Radiology',
        ),
      },
      {
        'imagePath': 'images/specialist.png',
        'title': 'specialist',
        'page': const ServicesTypes(
          title: 'Specialist',
        ),
      },
      {
        'imagePath': 'images/surgeon.png',
        'title': 'surgeon',
        'page': const ServicesTypes(
          title: 'Surgeon',
        ),
      },
      {
        'imagePath': 'images/therapist.png',
        'title': 'therapist',
        'page': const ServicesTypes(
          title: 'Therapist',
        ),
      },
      {
        'imagePath': 'images/other.png',
        'title': 'other',
        'page': const ServicesTypes(
          title: 'Other',
        ),
      },
    ];

    return GreyContainerPageLayout(
        title: 'Health Care',
        bodyContent: CategoryList(categories: categories));
  }
}
