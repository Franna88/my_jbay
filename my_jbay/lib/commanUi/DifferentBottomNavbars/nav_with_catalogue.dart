import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/about_tab.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/map_tab.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/catalogue_tab.dart'; // Replace now_on_tab.dart with catalogue_tab.dart
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/event_details.dart';
import 'package:my_jbay/constants/myColors.dart';

class NavWithCatalogue extends StatefulWidget {
  final int initialIndex;

  const NavWithCatalogue({
    Key? key,
    this.initialIndex = 0,
  }) : super(key: key);

  @override
  State<NavWithCatalogue> createState() => _NavWithCatalogueState();
}

class _NavWithCatalogueState extends State<NavWithCatalogue> {
  late int _currentIndex;
  late Widget _catalogueContent; // Renamed from _nowOnContent

  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    // Initialize _catalogueContent with the callback
    _catalogueContent = CatalogueTab(onContentChanged: _updateCatalogueContent);
    _pages.addAll([
      const AboutTab(),
      _catalogueContent, // Use CatalogueTab instead of NowOnTab
      const MapTab(),
      // const Center(child: Text('Web Page')),
      // const Center(child: Text('Contact Page')),
    ]);
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (index == 1) {
        _catalogueContent =
            CatalogueTab(onContentChanged: _updateCatalogueContent);
        _pages[1] = _catalogueContent;
      }
    });
  }

  void _updateCatalogueContent(Widget newContent) {
    setState(() {
      _catalogueContent = newContent;
      _pages[1] = _catalogueContent;
      _currentIndex = 1; // Stay on "Catalogue" tab
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
              icon: Icon(Icons.shopping_bag), label: 'Catalogue'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Map'),
          // BottomNavigationBarItem(icon: Icon(Icons.language), label: 'Web'),
          // BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Contact'),
        ],
      ),
    );
  }
}
