import 'package:flutter/material.dart';
import 'package:my_jbay/MainLandingPage/landingPage.dart';
import 'package:my_jbay/Login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LandingPage(),
    );
  }
}
