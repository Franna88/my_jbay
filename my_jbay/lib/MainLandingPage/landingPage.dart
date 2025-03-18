import 'package:flutter/material.dart';
import 'package:my_jbay/MainLandingPage/OnboardingPages/onboarding_pages.dart';
import 'package:my_jbay/Login/login.dart';
import 'package:my_jbay/Tourist/tourist_landing_page.dart';
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

    // Adjust proportions for smaller screens
    double contentHeight =
        screenHeight > 600 ? screenHeight * 0.80 : screenHeight * 0.9;
    double minFontSize = screenWidth < 300 ? 14 : 17;
    double welcomeFontSize = screenWidth < 300
        ? 40
        : screenWidth < 400
            ? 45
            : 50;
    double padding = screenWidth < 300 ? 10 : 20;

    return Scaffold(
      backgroundColor: Mycolors().blue,
      body: SafeArea(
        child: Stack(
          children: [
            // Content Container
            AnimatedPositioned(
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeInOut,
              bottom: isTapped ? 0 : -contentHeight,
              left: 0,
              right: 0,
              child: Container(
                height: contentHeight,
                width: screenWidth,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 0.85),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: padding),
                        Text(
                          "WELCOME!",
                          style: TextStyle(
                            fontSize: welcomeFontSize,
                            fontWeight: FontWeight.bold,
                            color: Mycolors().orange,
                            fontFamily: 'BmHanna',
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(height: padding * 2),
                        Text(
                          "Jeffreys Bay is glad to\nhave you here!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontSize: minFontSize,
                            color: const Color.fromRGBO(3, 3, 45, 0.70),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: padding),
                        Text(
                          "Please choose from an\noption below:",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontSize: minFontSize,
                            color: const Color.fromRGBO(3, 3, 45, 0.70),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: padding * 2),
                        SizedBox(
                          width: screenWidth * 0.8,
                          child: LargeButton(
                            buttonColor: Mycolors().blue,
                            buttonText: 'Tourist',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Login(userType: 'Tourist'),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: padding * 1.5),
                        SizedBox(
                          width: screenWidth * 0.8,
                          child: LargeButton(
                            buttonColor: Mycolors().yellow,
                            buttonText: 'Business',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Login(userType: 'Business'),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: padding),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Image Container
            AnimatedPositioned(
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeInOut,
              top: isTapped
                  ? padding
                  : screenHeight / 2 -
                      (screenHeight * (screenHeight < 600 ? 0.25 : 0.20)),
              left: padding,
              right: padding,
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
                    height: isTapped
                        ? screenHeight * (screenHeight < 600 ? 0.20 : 0.25)
                        : screenHeight * (screenHeight < 600 ? 0.35 : 0.40),
                    width: isTapped
                        ? screenWidth * (screenWidth < 300 ? 0.50 : 0.40)
                        : screenWidth * 0.90,
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
      ),
    );
  }
}
