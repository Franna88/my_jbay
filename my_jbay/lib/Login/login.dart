import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/Auth/ui/loginTextfields.dart';
import 'package:my_jbay/Business/business_landing_page.dart';
import 'package:my_jbay/MainLandingPage/OnboardingPages/onboarding_pages.dart';

import 'package:my_jbay/Tourist/tourist_landing_page.dart';
import 'package:my_jbay/commanUi/reusable_button.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class Login extends StatefulWidget {
  final String userType;
  const Login({super.key, required this.userType});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();
    final password = TextEditingController();

    // Get screen dimensions
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final bool isSmallScreen = screenHeight < 600;

    // Responsive measurements
    final double padding = screenWidth < 350 ? 10 : 20;
    final double fontSizeLarge = screenWidth < 350 ? 35 : 45;
    final double fontSizeMedium = screenWidth < 350 ? 22 : 28;
    final double fontSizeSmall = screenWidth < 350 ? 13 : 15;

    return Scaffold(
      backgroundColor: Mycolors().blue,
      body: SafeArea(
        child: SizedBox(
          height: MyUtility(context).height,
          width: MyUtility(context).width,
          child: Stack(
            children: [
              // Content Container
              Positioned(
                top: screenHeight * (isSmallScreen ? 0.15 : 0.2),
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(245, 245, 245, 0.85),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25)),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(padding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: screenHeight *
                                  (isSmallScreen ? 0.015 : 0.03)),
                          Text(
                            "WELCOME!",
                            style: TextStyle(
                              fontSize: fontSizeLarge,
                              fontWeight: FontWeight.bold,
                              color: Mycolors().orange,
                              fontFamily: 'BmHanna',
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: padding / 2),
                          Text(
                            "We can’t wait to show\nyou around our town",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: fontSizeSmall,
                              color: const Color.fromRGBO(3, 3, 45, 0.70),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: padding / 10),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: fontSizeMedium,
                                fontWeight: FontWeight.bold,
                                color: Mycolors().extremeBlue,
                                fontFamily: 'BmHanna',
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          SizedBox(height: padding * 0.75),
                          LoginTextFields(
                            inputController: username,
                            hintText: 'Username',
                          ),
                          SizedBox(height: padding * 0.25),
                          LoginTextFields(
                            inputController: password,
                            hintText: 'Password',
                          ),
                          SizedBox(height: padding),
                          Container(
                            width: screenWidth * 0.8,
                            height:
                                screenHeight * (isSmallScreen ? 0.05 : 0.06),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Mycolors().yellow,
                            ),
                            child: InkWell(
                              onTap: () {
                                if (widget.userType == 'Tourist') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TouristLandingPage(),
                                    ),
                                  );
                                } else if (widget.userType == 'Business') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const BusinessLandingPage(),
                                    ),
                                  );
                                }
                              },
                              borderRadius: BorderRadius.circular(40),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Login',
                                      style: TextStyle(
                                        fontSize: fontSizeSmall + 1,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        fontFamily: 'BmHanna',
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: fontSizeSmall + 3,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: padding),
                          _buildSocialButton(
                            'images/google.png',
                            'Sign Up with Google',
                            screenWidth,
                            screenHeight,
                            isSmallScreen,
                            fontSizeSmall,
                          ),
                          SizedBox(height: padding / 2),
                          _buildSocialButton(
                            'images/facebook.png',
                            'Sign Up with Facebook',
                            screenWidth,
                            screenHeight,
                            isSmallScreen,
                            fontSizeSmall,
                          ),
                          SizedBox(height: padding),
                          _buildRichTextLink(
                              "Forgot password?", "Get new", fontSizeSmall),
                          SizedBox(height: padding / 2),
                          _buildRichTextLink("Do you have an account?",
                              "Create Account", fontSizeSmall),
                          SizedBox(height: padding),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Logo Container - Reduced Size
              Positioned(
                top: isSmallScreen ? -60 : -40,
                left: screenWidth * 0.15,
                right: screenWidth * 0.15,
                child: Container(
                  height: screenHeight *
                      (isSmallScreen
                          ? 0.25
                          : 0.30), // Reduced from 0.30/0.36 to 0.25/0.30
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/myJbayLogo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(String imagePath, String text, double screenWidth,
      double screenHeight, bool isSmallScreen, double fontSize) {
    return SizedBox(
      width: screenWidth * 0.8,
      height: screenHeight * (isSmallScreen ? 0.04 : 0.045),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(color: Colors.grey.shade400, width: 1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: fontSize + 5),
            const SizedBox(width: 6),
            Text(
              text,
              style: MyJbayTextstyle(context)
                  .regularSmallText
                  .copyWith(color: Colors.grey.shade400, fontSize: fontSize),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRichTextLink(
      String normalText, String linkText, double fontSize) {
    return RichText(
      text: TextSpan(
        style: MyJbayTextstyle(context)
            .regularSmallText
            .copyWith(fontSize: fontSize),
        children: [
          TextSpan(text: normalText),
          TextSpan(
            text: linkText,
            style: MyJbayTextstyle(context).regularSmallText.copyWith(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  color: Mycolors().blue,
                ),
          ),
        ],
      ),
    );
  }
}
