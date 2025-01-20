import 'package:flutter/material.dart';

class MainNavbar extends StatefulWidget {
  final int initialIndex;
  final ValueChanged<int> onTabSelected;

  const MainNavbar({
    Key? key,
    this.initialIndex = 0,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  _MainNavbarState createState() => _MainNavbarState();
}

class _MainNavbarState extends State<MainNavbar> {
  late int _currentIndex;

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
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'My JBay',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}
