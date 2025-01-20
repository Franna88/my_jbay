import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/Tourist/MainPages/tourist_explore.dart';
import 'package:my_jbay/Tourist/MainPages/tourist_my_jbay.dart';
import 'package:my_jbay/commanUi/largeButton.dart';
import 'package:my_jbay/commanUi/main_navbar.dart';
import 'package:my_jbay/constants/myColors.dart';

class TouristLandingPage extends StatefulWidget {
  const TouristLandingPage({super.key});

  @override
  _TouristLandingPageState createState() => _TouristLandingPageState();
}

class _TouristLandingPageState extends State<TouristLandingPage> {
  int _selectedIndex = 0;

  // List of pages corresponding to the tabs
  final List<Widget> _pages = [
    const TouristExplore(), // Explore page
    const TouristMyJbay(), // My JBay page
    Center(child: Text('Settings Page')), // Placeholder for Settings page
  ];

  // Function to handle tab selection
  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: MainNavbar(
        initialIndex: _selectedIndex,
        onTabSelected:
            _onTabSelected, // Update the selected index on tab change
      ),
    );
  }
}
