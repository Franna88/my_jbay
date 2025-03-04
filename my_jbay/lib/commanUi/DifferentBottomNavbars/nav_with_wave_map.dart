import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/about_tab.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/map_tab.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/wave_map_tab.dart';
import 'package:my_jbay/constants/myColors.dart';

class NavWithWaveMap extends StatefulWidget {
  final int initialIndex;

  const NavWithWaveMap({
    Key? key,
    this.initialIndex = 0,
  }) : super(key: key);

  @override
  State<NavWithWaveMap> createState() => _NavWithWaveMapState();
}

class _NavWithWaveMapState extends State<NavWithWaveMap> {
  late int _currentIndex;

  final List<Widget> _pages = [
    const AboutTab(),
    const WaveMapTab(),
    // const Center(child: Text('Web Page')),
    // const Center(child: Text('Contact Page')),
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
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Map'),
          // BottomNavigationBarItem(icon: Icon(Icons.language), label: 'Web'),
          // BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Contact'),
        ],
      ),
    );
  }
}
