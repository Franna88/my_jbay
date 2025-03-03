import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/EventPage/events_select_date.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/EventPage/events_today.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/custom_search_bar.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage>
    with SingleTickerProviderStateMixin {
  final String userName = 'Franna';
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {}); // Force rebuild when tab changes
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().lightGrey,
      body: SizedBox(
        width: MyUtility(context).width,
        height: MyUtility(context).height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                          width: MyUtility(context).width * 0.95,
                          child: CustomSearchBar(),
                        ),
                      ),
                      // const Spacer(),
                      // Image.asset(
                      //   'images/myJbay_top_page_logo.png',
                      //   width: MyUtility(context).width * 0.3,
                      //   height: MyUtility(context).width * 0.2,
                      //   fit: BoxFit.contain,
                      // ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'What\'s happening?',
                          style: MyJbayTextstyle(context).yellowStyleHeader,
                        ),
                      ),
                    ],
                  ),
                  TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(
                      color: Mycolors()
                          .yellow, // Yellow background for selected tab
                      borderRadius: BorderRadius.circular(12), // Border radius
                    ),
                    dividerColor: Colors.transparent, // Removes the bottom line
                    tabs: [
                      Container(
                        width:
                            MyUtility(context).width * 0.45, // Responsive width
                        decoration:
                            _tabController.index != 0 // "Today" is unselected
                                ? BoxDecoration(
                                    border: Border.all(
                                        color: Mycolors().blue, width: 2),
                                    borderRadius: BorderRadius.circular(12),
                                  )
                                : null, // No border when selected
                        alignment: Alignment.center,
                        child: Text(
                          'TODAY',
                          style: _tabController.index == 0
                              ? MyJbayTextstyle(context)
                                  .styleSmallText
                                  .copyWith(color: Colors.white)
                              : MyJbayTextstyle(context)
                                  .styleSmallText
                                  .copyWith(color: Mycolors().blue),
                        ),
                      ),
                      Container(
                        width:
                            MyUtility(context).width * 0.45, // Responsive width
                        decoration: _tabController.index !=
                                1 // "Select Date" is unselected
                            ? BoxDecoration(
                                border: Border.all(
                                    color: Mycolors().blue, width: 2),
                                borderRadius: BorderRadius.circular(12),
                              )
                            : null, // No border when selected
                        alignment: Alignment.center,
                        child: Text(
                          'SELECT DATE',
                          style: _tabController.index == 1
                              ? MyJbayTextstyle(context)
                                  .styleSmallText
                                  .copyWith(color: Colors.white)
                              : MyJbayTextstyle(context)
                                  .styleSmallText
                                  .copyWith(color: Mycolors().blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8), // Spacing after tabs
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    EventsToday(),
                    EventsSelectDate(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
