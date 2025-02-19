import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/commanUi/largeButton.dart';
import 'package:my_jbay/constants/myColors.dart';

class OnboardingPageThree extends StatelessWidget {
  const OnboardingPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              children: [
                Text(
                  'Find Your Match!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Mycolors().blue,
                      fontFamily: 'BmHanna',
                      letterSpacing: 1),
                ),
                const SizedBox(height: 20),
                Text(
                  'Find the perfect holiday itinerary right here at your fingertips.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                      fontSize: 17,
                      color: Color.fromRGBO(3, 3, 45, 0.70),
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Mycolors().lightBlue,
                      offset: Offset(0, 4),
                      blurRadius: 0,
                    ),
                    BoxShadow(
                      color: Mycolors().lightBlue,
                      offset: Offset(1, 0),
                      blurRadius: 0,
                    ),
                    BoxShadow(
                      color: Mycolors().lightBlue,
                      offset: Offset(-1, 0),
                      blurRadius: 0,
                    ),
                  ],
                ),
                child: Image.asset(
                  ('images/nomads_beach_campout.png'),
                  width: screenHeight * 0.4,
                  height: screenHeight * 0.4,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
