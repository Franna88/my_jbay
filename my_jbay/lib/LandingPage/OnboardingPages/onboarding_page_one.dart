import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/commanUi/largeButton.dart';
import 'package:my_jbay/constants/myColors.dart';

class OnboardingPageOne extends StatelessWidget {
  const OnboardingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Mycolors().lightBlue,
              shape: BoxShape.circle,
            ),
            width: screenHeight * 0.35,
            height: screenHeight * 0.35,
            child: Image.asset(
              ('images/nomads_sea_explore.png'),
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              children: [
                Text(
                  "Find Family Fun!",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Mycolors().blue,
                      fontFamily: 'BmHanna',
                      letterSpacing: 1),
                ),
                const SizedBox(height: 30),
                Text(
                  "We have collected all the activities from around for you to easily find the perfect family fun!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                      fontSize: 17,
                      color: Color.fromRGBO(3, 3, 45, 0.70),
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
