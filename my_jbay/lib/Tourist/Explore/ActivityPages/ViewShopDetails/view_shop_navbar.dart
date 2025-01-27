import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/about_business.dart';
import 'package:my_jbay/constants/myColors.dart';

class ViewShopNavbar extends StatefulWidget {
  final int initialIndex;
  final ValueChanged<int> onTabSelected;

  const ViewShopNavbar({
    Key? key,
    this.initialIndex = 0,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  _ViewShopNavbarState createState() => _ViewShopNavbarState();
}

class _ViewShopNavbarState extends State<ViewShopNavbar> {
  late int _currentIndex;

  // Define the list of pages to navigate to
  final List<Widget> _pages = [
    const AboutBusiness(),
    const AboutBusiness(),
    const AboutBusiness(),
    const AboutBusiness(),
    const AboutBusiness(),
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
    widget.onTabSelected(index);
    // Navigate to the corresponding page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => _pages[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
