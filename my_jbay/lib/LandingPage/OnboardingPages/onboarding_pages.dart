import 'package:flutter/material.dart';
import 'package:my_jbay/LandingPage/OnboardingPages/onboarding_page_one.dart';
import 'package:my_jbay/LandingPage/OnboardingPages/onboarding_page_three.dart';
import 'package:my_jbay/LandingPage/OnboardingPages/onboarding_page_two.dart';
import 'package:my_jbay/commanUi/reusable_button.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPages extends StatefulWidget {
  const OnboardingPages({super.key});

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  final PageController _onboardingPageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: screenHeight * 0.8,
            width: screenWidth,
            child: PageView(
              controller: _onboardingPageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: const [
                OnboardingPageOne(),
                OnboardingPageTwo(),
                OnboardingPageThree(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _onboardingPageController,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Mycolors().yellow,
              dotColor: Mycolors().lightGrey,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 10,
            ),
          ),
          Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    // Navigate to the homepage when Skip is tapped
                    Navigator.pushReplacementNamed(context, '/homepage');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        border: Border.all(color: Mycolors().blue, width: 1)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Mycolors().blue,
                            fontFamily: 'BmHanna',
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                ReusableButton(
                  buttonColor: Mycolors().yellow,
                  buttonText: 'Next',
                  customWidth: screenWidth * 0.32,
                  onTap: () {
                    if (_currentPage == 2) {
                      // Navigate to the homepage when Finish is tapped
                      Navigator.pushReplacementNamed(context, '/homepage');
                    } else {
                      // Navigate to the next page
                      _onboardingPageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
