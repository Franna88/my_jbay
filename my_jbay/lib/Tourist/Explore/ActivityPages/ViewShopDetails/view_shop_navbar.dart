import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/about_tab.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/now_on_tab.dart';
import 'package:my_jbay/constants/myColors.dart';

class ViewShopNavbar extends StatefulWidget {
  final int initialIndex;

  const ViewShopNavbar({
    Key? key,
    this.initialIndex = 0,
  }) : super(key: key);

  @override
  _ViewShopNavbarState createState() => _ViewShopNavbarState();
}

class _ViewShopNavbarState extends State<ViewShopNavbar> {
  late int _currentIndex;

  // Define the list of pages to display within the navbar
  final List<Widget> _pages = [
    const AboutTab(),
    const NowOnTab(),
    const Center(child: Text('Map Page')), // Replace with your Map page widget
    const Center(child: Text('Web Page')), // Replace with your Web page widget
    const Center(
        child: Text('Contact Page')), // Replace with your Contact page widget
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Mycolors().blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.touch_app),
            label: 'Now On',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.web),
            label: 'Web',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
