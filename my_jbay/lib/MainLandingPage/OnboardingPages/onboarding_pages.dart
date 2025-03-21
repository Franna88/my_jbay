import 'package:flutter/material.dart';
import 'package:my_jbay/Business/BusinessSettingsTab/BusinessMembership/become_business_member.dart';
import 'package:my_jbay/Business/BusinessSettingsTab/BusinessMembership/business_membership.dart';
import 'package:my_jbay/MainLandingPage/OnboardingPages/onboarding_page_one.dart';
import 'package:my_jbay/MainLandingPage/OnboardingPages/onboarding_page_three.dart';
import 'package:my_jbay/MainLandingPage/OnboardingPages/onboarding_page_two.dart';
import 'package:my_jbay/Tourist/tourist_landing_page.dart';
import 'package:my_jbay/Business/business_landing_page.dart';
import 'package:my_jbay/commanUi/reusable_button.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/constants/navbar_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:provider/provider.dart'; // Add Provider

class OnboardingPages extends StatefulWidget {
  final String userType;

  const OnboardingPages({super.key, required this.userType});

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  final PageController _onboardingPageController = PageController();
  int _currentPage = 0;

  // Helper method to navigate and manage navbar visibility
  void _navigateToDestination(BuildContext context) {
    final navbarProvider =
        Provider.of<NavbarVisibilityProvider>(context, listen: false);

    if (widget.userType == 'Tourist') {
      navbarProvider.showNavbar(); // Show navbar for Tourist
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const TouristLandingPage()),
        (Route<dynamic> route) => false,
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BecomeBusinessMember()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final title = widget.userType == 'Tourist'
        ? 'Find Family'
        : "Show them what\nyou’ve got!";
    final description = widget.userType == 'Tourist'
        ? 'We have collected all the activities from around for you to easily find the perfect family fun!'
        : 'Take your business to the next level by connecting with local opportunities!';
    final title2 =
        widget.userType == 'Tourist' ? 'Look for Local' : 'Local is Lekker';

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
              children: [
                OnboardingPageOne(
                  title: title,
                  description: description,
                ),
                OnboardingPageTwo(
                  title: title2,
                ),
                const OnboardingPageThree(),
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
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Row(
              children: [
                InkWell(
                  onTap: () =>
                      _navigateToDestination(context), // Updated navigation
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                      border: Border.all(color: Mycolors().blue, width: 1),
                    ),
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
                const Spacer(),
                ReusableButton(
                  buttonColor: Mycolors().yellow,
                  buttonText: _currentPage == 2 ? 'Finish' : 'Next',
                  customWidth: screenWidth * 0.32,
                  onTap: () {
                    if (_currentPage == 2) {
                      _navigateToDestination(context); // Updated navigation
                    } else {
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
          const Spacer(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _onboardingPageController.dispose();
    super.dispose();
  }
}
