import 'package:flutter/material.dart';
import 'package:my_jbay/Login/login.dart';
import 'package:my_jbay/MainLandingPage/OnboardingPages/onboarding_pages.dart';
import 'package:my_jbay/Tourist/tourist_landing_page.dart';
import 'package:my_jbay/commanUi/largeButton.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:google_fonts/google_fonts.dart';

class NewBusinessMember extends StatefulWidget {
  const NewBusinessMember({super.key});

  @override
  State<NewBusinessMember> createState() => _NewBusinessMemberState();
}

class _NewBusinessMemberState extends State<NewBusinessMember> {
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
                    "CONGRATULATIONS!",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Mycolors().orange,
                        fontFamily: 'BmHanna',
                        letterSpacing: 1),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    "You are now a business member on the My Jbay App!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontSize: 17,
                        color: Color.fromRGBO(3, 3, 45, 0.70),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  LargeButton(
                    buttonColor: Mycolors().yellow,
                    buttonText: 'Get Started',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(userType: 'Business'),
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
