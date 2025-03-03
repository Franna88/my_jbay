import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/Specials/special_category_filter.dart';
import 'package:my_jbay/Tourist/Explore/Specials/special_post_containers.dart';
import 'package:my_jbay/constants/myutility.dart';

class EventsToday extends StatefulWidget {
  const EventsToday({super.key});

  @override
  State<EventsToday> createState() => _EventsTodayState();
}

class _EventsTodayState extends State<EventsToday> {
  String selectedCategory = 'all';

  // Updated Categories List
  final List<Map<String, dynamic>> categories = [
    {'title': 'all', 'imagePath': 'images/myJbay_top_page_logo.png'},
    {
      'title': 'art',
      'imagePath': 'images/art.png'
    }, // Adjust image path as needed
    {
      'title': 'music',
      'imagePath': 'images/music.png'
    }, // Adjust image path as needed
    {
      'title': 'municipality',
      'imagePath': 'images/municipality.png'
    }, // Adjust image path as needed
    {
      'title': 'kids',
      'imagePath': 'images/kids.png'
    }, // Adjust image path as needed
    {
      'title': 'markets',
      'imagePath': 'images/markets.png'
    }, // Adjust image path as needed
    {
      'title': 'sports',
      'imagePath': 'images/sports.png'
    }, // Adjust image path as needed
  ];

  // Events List (filtered to today’s date for this example; updated categories)
  final List<Map<String, String>> events = [
    {
      'imageUrl': 'images/event_paint.png',
      'specialTitle': 'Paint & Sip Night',
      'location': 'Art Café, Jeffreys Bay',
      'dateTime': 'March 25 - 6:00 PM',
      'category': 'art', // Updated from 'events'
    },
    {
      'imageUrl': 'images/event_padel.png',
      'specialTitle': 'Dinner Special',
      'location': 'Seaside Grill',
      'dateTime': 'March 30 - 7:30 PM',
      'category': 'markets', // Updated from 'food' (example mapping)
    },
    {
      'imageUrl': 'images/event_paint.png',
      'specialTitle': 'Summer Sale 50% Off',
      'location': 'JBay Fashion Outlet',
      'dateTime': 'April 1 - All Day',
      'category': 'markets', // Updated from 'shopping'
    },
    {
      'imageUrl': 'images/event_padel.png',
      'specialTitle': 'Free Surf Lessons',
      'location': 'Main Beach, Jeffreys Bay',
      'dateTime': 'April 5 - 10:00 AM',
      'category': 'sports', // Updated from 'activities'
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Filter events for today (you'd need to compare with current date in a real app)
    List<Map<String, String>> filteredEvents = selectedCategory == 'all'
        ? events
        : events.where((s) => s['category'] == selectedCategory).toList();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                      isSelected: isSelected,
                    ),
                  ),
                );
              },
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: filteredEvents.length,
            itemBuilder: (context, index) {
              var special = filteredEvents[index];
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
    );
  }
}
