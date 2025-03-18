import 'package:flutter/material.dart';
import 'package:my_jbay/constants/navbar_controller.dart';
import 'package:provider/provider.dart';
import 'package:my_jbay/Tourist/Explore/tourist_explore.dart';
import 'package:my_jbay/Tourist/MyJbay/tourist_my_jbay.dart';
import 'package:my_jbay/Tourist/Settings/tourist_settings.dart';
import 'package:my_jbay/commanUi/DifferentBottomNavbars/main_globalkey_navbar.dart';

class TouristLandingPage extends StatefulWidget {
  final int initialTab;
  const TouristLandingPage({super.key, this.initialTab = 0});

  @override
  TouristLandingPageState createState() => TouristLandingPageState();
}

class TouristLandingPageState extends State<TouristLandingPage> {
  late int selectedIndex; // Made public (removed underscore)

  final List<GlobalKey<NavigatorState>> navigatorKeys = [
    // Made public (removed underscore)
    GlobalKey<NavigatorState>(), // Explore tab navigator
    GlobalKey<NavigatorState>(), // My JBay tab navigator
    GlobalKey<NavigatorState>(), // Settings tab navigator
  ];

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialTab;
  }

  void onTabSelected(int index) {
    // Made public (removed underscore)
    if (selectedIndex == index) {
      navigatorKeys[index].currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isNavbarVisible =
        context.watch<NavbarVisibilityProvider>().isNavbarVisible;

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          Navigator(
            key: navigatorKeys[0],
            onGenerateRoute: (routeSettings) {
              return MaterialPageRoute(
                builder: (_) => const TouristExplore(),
                settings: const RouteSettings(name: 'TouristExplore'),
              );
            },
          ),
          Navigator(
            key: navigatorKeys[1],
            onGenerateRoute: (routeSettings) {
              return MaterialPageRoute(
                builder: (_) => const TouristMyJbay(),
                settings: const RouteSettings(name: 'TouristMyJbay'),
              );
            },
          ),
          Navigator(
            key: navigatorKeys[2],
            onGenerateRoute: (routeSettings) {
              return MaterialPageRoute(
                builder: (_) => const TouristSettings(),
                settings: const RouteSettings(name: 'TouristSettings'),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: isNavbarVisible
          ? MainNavbar(
              initialIndex: selectedIndex,
              onTabSelected: onTabSelected,
            )
          : null,
    );
  }
}
