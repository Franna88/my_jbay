import 'package:flutter/material.dart';
import 'package:my_jbay/constants/navbar_controller.dart';
import 'package:provider/provider.dart';
import 'package:my_jbay/Tourist/Explore/tourist_explore.dart';
import 'package:my_jbay/Tourist/MyJbay/tourist_my_jbay.dart';
import 'package:my_jbay/Tourist/Settings/tourist_settings.dart';
import 'package:my_jbay/commanUi/DifferentBottomNavbars/main_globalkey_navbar.dart';

class TouristLandingPage extends StatefulWidget {
  const TouristLandingPage({super.key});

  @override
  _TouristLandingPageState createState() => _TouristLandingPageState();
}

class _TouristLandingPageState extends State<TouristLandingPage> {
  int _selectedIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(), // Explore tab navigator
    GlobalKey<NavigatorState>(), // My JBay tab navigator
    GlobalKey<NavigatorState>(), // Settings tab navigator
  ];

  void _onTabSelected(int index) {
    if (_selectedIndex == index) {
      _navigatorKeys[index].currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isNavbarVisible =
        context.watch<NavbarVisibilityProvider>().isNavbarVisible;

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Navigator(
            key: _navigatorKeys[0],
            onGenerateRoute: (routeSettings) {
              return MaterialPageRoute(
                builder: (_) => const TouristExplore(),
              );
            },
          ),
          Navigator(
            key: _navigatorKeys[1],
            onGenerateRoute: (routeSettings) {
              return MaterialPageRoute(
                builder: (_) => const TouristMyJbay(),
              );
            },
          ),
          Navigator(
            key: _navigatorKeys[2],
            onGenerateRoute: (routeSettings) {
              return MaterialPageRoute(
                builder: (_) => const TouristSettings(),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: isNavbarVisible
          ? MainNavbar(
              initialIndex: _selectedIndex,
              onTabSelected: _onTabSelected,
            )
          : null, // Hide navbar if isNavbarVisible is false
    );
  }
}
