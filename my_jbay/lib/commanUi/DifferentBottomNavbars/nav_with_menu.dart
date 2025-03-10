import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/about_tab.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/map_tab.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/menu_tab.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/event_details.dart';
import 'package:my_jbay/constants/myColors.dart';

class NavWithMenu extends StatefulWidget {
  final int initialIndex;

  const NavWithMenu({
    Key? key,
    this.initialIndex = 0,
  }) : super(key: key);

  @override
  State<NavWithMenu> createState() => _NavWithMenuState();
}

class _NavWithMenuState extends State<NavWithMenu> {
  late int _currentIndex;
  late Widget _menuContent; // Changed from _catalogueContent

  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _menuContent = MenuTab(
        onContentChanged: _updateMenuContent); // Changed from CatalogueTab
    _pages.addAll([
      const AboutTab(),
      _menuContent,
      const MapTab(),
    ]);
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (index == 1) {
        _menuContent = MenuTab(onContentChanged: _updateMenuContent);
        _pages[1] = _menuContent;
      }
    });
  }

  void _updateMenuContent(Widget newContent) {
    // Changed from _updateCatalogueContent
    setState(() {
      _menuContent = newContent;
      _pages[1] = _menuContent;
      _currentIndex = 1; // Stay on "Menu" tab
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
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant),
              label: 'Menu'), // Changed icon and label
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Map'),
        ],
      ),
    );
  }
}
