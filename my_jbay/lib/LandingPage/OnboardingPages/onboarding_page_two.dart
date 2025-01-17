import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/commanUi/largeButton.dart';
import 'package:my_jbay/constants/myColors.dart';

class OnboardingPageTwo extends StatelessWidget {
  const OnboardingPageTwo({super.key});

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
                  "Look for Local",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Mycolors().orange,
                      fontFamily: 'BmHanna',
                      letterSpacing: 1),
                ),
                const SizedBox(height: 20),
                Text(
                  "Our town is exploding with local cuisine and craft, from clothes, to jams and bags. Support our local talent!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                      fontSize: 17,
                      color: Color.fromRGBO(3, 3, 45, 0.70),
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Image.asset(
            ('images/nomads_bike.png'),
            width: screenHeight * 0.4,
            height: screenHeight * 0.4,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
