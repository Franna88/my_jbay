import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/commanUi/largeButton.dart';
import 'package:my_jbay/constants/myColors.dart';

class TouristSettings extends StatelessWidget {
  const TouristSettings({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Everything Local',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.normal,
              color: Mycolors().blue,
              fontFamily: 'BmHanna',
              letterSpacing: 1,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
