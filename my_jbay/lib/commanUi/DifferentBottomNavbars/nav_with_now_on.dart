import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/about_tab.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/map_tab.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/now_on_tab.dart';

import 'package:my_jbay/constants/myColors.dart';

class NavbarWithNowOn extends StatefulWidget {
  final int initialIndex;

  const NavbarWithNowOn({
    Key? key,
    this.initialIndex = 0,
  }) : super(key: key);

  @override
  State<NavbarWithNowOn> createState() => _NavbarWithNowOnState();
}

class _NavbarWithNowOnState extends State<NavbarWithNowOn> {
  late int _currentIndex;
  late Widget _nowOnContent; // Changed to late initialization

  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    // Initialize _nowOnContent with the callback
    _nowOnContent = NowOnTab(onContentChanged: _updateNowOnContent);
    _pages.addAll([
      const AboutTab(),
      _nowOnContent, // Use the initialized _nowOnContent
      const MapTab(),
      // const Center(child: Text('Web Page')),
      // const Center(child: Text('Contact Page')),
    ]);
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (index == 1) {
        _nowOnContent = NowOnTab(onContentChanged: _updateNowOnContent);
        _pages[1] = _nowOnContent;
      }
    });
  }

  void _updateNowOnContent(Widget newContent) {
    setState(() {
      _nowOnContent = newContent;
      _pages[1] = _nowOnContent;
      _currentIndex = 1; // Stay on "Now On" tab
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Mycolors().blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.touch_app), label: 'Now On'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Map'),
          // BottomNavigationBarItem(icon: Icon(Icons.language), label: 'Web'),
          // BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Contact'),
        ],
      ),
    );
  }
}
