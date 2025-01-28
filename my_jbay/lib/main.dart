import 'package:flutter/material.dart';
import 'package:my_jbay/constants/navbar_controller.dart';
import 'package:provider/provider.dart';

import 'package:my_jbay/MainLandingPage/landingPage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => NavbarController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
    );
  }
}
