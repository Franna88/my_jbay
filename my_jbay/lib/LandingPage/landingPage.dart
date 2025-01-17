import 'package:flutter/material.dart';
import 'package:my_jbay/LandingPage/OnboardingPages/onboarding_pages.dart';
import 'package:my_jbay/commanUi/largeButton.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Mycolors().blue,
      body: Stack(
        children: [
          // Content Container
          AnimatedPositioned(
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOut,
            bottom: isTapped ? 0 : -screenHeight * 0.80,
            child: Container(
              height: screenHeight * 0.80,
              width: screenWidth,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(245, 245, 245, 0.85),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "WELCOME!",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Mycolors().orange,
                        fontFamily: 'BmHanna',
                        letterSpacing: 1),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    "Jeffreys Bay is glad to\nhave you here!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontSize: 17,
                        color: Color.fromRGBO(3, 3, 45, 0.70),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Please choose from an\noption below:",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontSize: 17,
                        color: Color.fromRGBO(3, 3, 45, 0.70),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 50),
                  LargeButton(
                    buttonColor: Mycolors().blue,
                    buttonText: 'Tourist',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              OnboardingPages(userType: 'Tourist'),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 25),
                  LargeButton(
                    buttonColor: Mycolors().yellow,
                    buttonText: 'Business',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              OnboardingPages(userType: 'Business'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          // Image Container
          AnimatedPositioned(
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOut,
            top: isTapped ? 50 : screenHeight / 2 - (screenHeight * 0.20),
            left: isTapped ? screenWidth * 0.05 : screenWidth * 0.05,
            right: isTapped ? screenWidth * 0.05 : screenWidth * 0.05,
            child: AnimatedSize(
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeInOut,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isTapped = true;
                  });
                },
                child: Container(
                  height: isTapped ? screenHeight * 0.25 : screenHeight * 0.40,
                  width: isTapped ? screenWidth * 0.40 : screenWidth * 0.90,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('images/myJbayLogo.png'),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
