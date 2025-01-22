import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/tourist_explore.dart';
import 'package:my_jbay/Tourist/MyJbay/tourist_my_jbay.dart';
import 'package:my_jbay/commanUi/main_navbar.dart';

class BusinessLandingPage extends StatefulWidget {
  const BusinessLandingPage({super.key});

  @override
  _BusinessLandingPageState createState() => _BusinessLandingPageState();
}

class _BusinessLandingPageState extends State<BusinessLandingPage> {
  int _selectedIndex = 0;

  // Create a separate navigator for each tab
  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(), // Explore tab navigator
    GlobalKey<NavigatorState>(), // My JBay tab navigator
    GlobalKey<NavigatorState>(), // Settings tab navigator
  ];

  // List of pages corresponding to the tabs
  final List<Widget> _pages = [
    const TouristExplore(), // Explore page
    const TouristMyJbay(), // My JBay page
    const Center(child: Text('Settings business')), // Settings page
  ];

  // Function to handle tab selection
  void _onTabSelected(int index) {
    if (_selectedIndex == index) {
      // If the current tab is reselected, reset its navigator stack
      _navigatorKeys[index].currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Navigator(
            key: _navigatorKeys[0],
            onGenerateRoute: (routeSettings) {
              return MaterialPageRoute(builder: (_) => const TouristExplore());
            },
          ),
          Navigator(
            key: _navigatorKeys[1],
            onGenerateRoute: (routeSettings) {
              return MaterialPageRoute(builder: (_) => const TouristMyJbay());
            },
          ),
          Navigator(
            key: _navigatorKeys[2],
            onGenerateRoute: (routeSettings) {
              return MaterialPageRoute(
                  builder: (_) =>
                      const Center(child: Text('Settings business')));
            },
          ),
        ],
      ),
      bottomNavigationBar: MainNavbar(
        initialIndex: _selectedIndex,
        onTabSelected: _onTabSelected,
      ),
    );
  }
}
