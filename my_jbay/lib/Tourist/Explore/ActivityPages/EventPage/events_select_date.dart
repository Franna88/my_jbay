import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/Specials/special_category_filter.dart';
import 'package:my_jbay/Tourist/Explore/Specials/special_post_containers.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart'; // For date formatting

class EventsSelectDate extends StatefulWidget {
  const EventsSelectDate({super.key});

  @override
  State<EventsSelectDate> createState() => _EventsSelectDateState();
}

class _EventsSelectDateState extends State<EventsSelectDate>
    with SingleTickerProviderStateMixin {
  String selectedCategory = 'all';
  DateTime? selectedDate;
  bool showCalendar = true;
  double? calendarWidth; // To store the calendar's width

  // Categories List
  final List<Map<String, dynamic>> categories = [
    {'title': 'all', 'imagePath': 'images/myJbay_top_page_logo.png'},
    {'title': 'art', 'imagePath': 'images/art.png'},
    {'title': 'music', 'imagePath': 'images/music.png'},
    {'title': 'municipality', 'imagePath': 'images/municipality.png'},
    {'title': 'kids', 'imagePath': 'images/kids.png'},
    {'title': 'markets', 'imagePath': 'images/markets.png'},
    {'title': 'sports', 'imagePath': 'images/sports.png'},
  ];

  // Events List
  final List<Map<String, String>> events = [
    {
      'imageUrl': 'images/event_paint.png',
      'specialTitle': 'Paint & Sip Night',
      'location': 'Art Café, Jeffreys Bay',
      'dateTime': 'March 25 - 6:00 PM',
      'category': 'art',
    },
    {
      'imageUrl': 'images/event_padel.png',
      'specialTitle': 'Dinner Special',
      'location': 'Seaside Grill',
      'dateTime': 'March 30 - 7:30 PM',
      'category': 'markets',
    },
    {
      'imageUrl': 'images/event_paint.png',
      'specialTitle': 'Summer Sale 50% Off',
      'location': 'JBay Fashion Outlet',
      'dateTime': 'April 1 - All Day',
      'category': 'markets',
    },
    {
      'imageUrl': 'images/event_padel.png',
      'specialTitle': 'Free Surf Lessons',
      'location': 'Main Beach, Jeffreys Bay',
      'dateTime': 'April 5 - 10:00 AM',
      'category': 'sports',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Filter events based on selected category and date
    List<Map<String, String>> filteredEvents = selectedCategory == 'all'
        ? events
        : events.where((s) => s['category'] == selectedCategory).toList();

    if (selectedDate != null) {
      filteredEvents = filteredEvents.where((event) {
        final eventDate = _parseDate(event['dateTime']!);
        return eventDate.day == selectedDate!.day &&
            eventDate.month == selectedDate!.month &&
            eventDate.year == selectedDate!.year;
      }).toList();
    }

    // Format the date to "Day, Date Month Year" (e.g., "Tuesday, 25 March 2025")
    String formattedDate = DateFormat('EEEE, d MMMM yyyy').format(
      selectedDate ?? DateTime.now(),
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                formattedDate,
                style: MyJbayTextstyle(context)
                    .blacksStyleSubheader
                    .copyWith(color: Mycolors().blue),
              ),
            ),
          ),
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
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return SizeTransition(
                sizeFactor: animation,
                axis: Axis.vertical,
                axisAlignment: -1.0, // Top alignment (shrinks upward)
                child: child,
              );
            },
            child: showCalendar
                ? Container(
                    key: const ValueKey('calendar'),
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Mycolors().blue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          // Capture the calendar's width
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            if (calendarWidth != constraints.maxWidth) {
                              setState(() {
                                calendarWidth = constraints.maxWidth;
                              });
                            }
                          });
                          return TableCalendar(
                            firstDay: DateTime.utc(2020, 1, 1),
                            lastDay: DateTime.utc(2030, 12, 31),
                            focusedDay: selectedDate ?? DateTime.now(),
                            selectedDayPredicate: (day) =>
                                isSameDay(selectedDate, day),
                            onDaySelected: (selectedDay, focusedDay) {
                              setState(() {
                                selectedDate = selectedDay;
                                showCalendar =
                                    false; // Shrink calendar to button
                              });
                            },
                            calendarFormat:
                                CalendarFormat.month, // Ensure month view
                            headerStyle: HeaderStyle(
                              formatButtonVisible: false, // Hide format button
                              titleCentered: true,
                              titleTextStyle: TextStyle(
                                color: Mycolors().blue,
                                fontSize: 16.0,
                              ),
                            ),
                            calendarStyle: CalendarStyle(
                              selectedDecoration: BoxDecoration(
                                color: Mycolors().yellow,
                                shape: BoxShape.circle,
                              ),
                              todayDecoration: BoxDecoration(
                                color: Mycolors().blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                : Container(
                    key: const ValueKey('button'),
                    margin: const EdgeInsets.all(8.0),
                    width: calendarWidth, // Match the calendar's width
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showCalendar = true; // Reopen calendar
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Mycolors().blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                      ),
                      child: Text(
                        'CHOOSE DATE',
                        style: MyJbayTextstyle(context)
                            .styleSmallText
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
          ),
          if (!showCalendar && selectedDate != null) ...[
            filteredEvents.isEmpty
                ? Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'No events on $formattedDate yet',
                      style: MyJbayTextstyle(context)
                          .styleSmallText
                          .copyWith(color: Mycolors().blue),
                    ),
                  )
                : ListView.builder(
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
        ],
      ),
    );
  }

  // Helper function to parse date from string (simplified for this example)
  DateTime _parseDate(String dateTime) {
    final parts = dateTime.split(' - ')[0].split(' ');
    final month = _monthToInt(parts[0]);
    final day = int.parse(parts[1]);
    final year = DateTime.now().year; // Assuming current year for simplicity
    return DateTime(year, month, day);
  }

  int _monthToInt(String month) {
    const months = {
      'January': 1,
      'February': 2,
      'March': 3,
      'April': 4,
      'May': 5,
      'June': 6,
      'July': 7,
      'August': 8,
      'September': 9,
      'October': 10,
      'November': 11,
      'December': 12,
    };
    return months[month] ?? 1;
  }
}
