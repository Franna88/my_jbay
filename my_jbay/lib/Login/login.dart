import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/Business/business_landing_page.dart';
import 'package:my_jbay/MainLandingPage/OnboardingPages/onboarding_pages.dart';
import 'package:my_jbay/Login/ui/loginTextfields.dart';
import 'package:my_jbay/Tourist/tourist_landing_page.dart';
import 'package:my_jbay/commanUi/reusable_button.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class Login extends StatefulWidget {
  final String userType; // Receive userType from the previous screen
  const Login({super.key, required this.userType});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();
    final password = TextEditingController();

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Mycolors().blue,
      body: SizedBox(
        height: MyUtility(context).height,
        width: MyUtility(context).width,
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              bottom: 0,
              child: Container(
                height: MyUtility(context).height * 0.80,
                width: MyUtility(context).width,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 0.85),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Text(
                        "WELCOME!",
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Mycolors().orange,
                            fontFamily: 'BmHanna',
                            letterSpacing: 1),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "We can’t wait to show\nyou around our town",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            color: Color.fromRGBO(3, 3, 45, 0.70),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Mycolors().extremeBlue,
                              fontFamily: 'BmHanna',
                              letterSpacing: 1),
                        ),
                      ),
                      const SizedBox(height: 15),
                      LoginTextFields(
                        inputController: username,
                        hintText: 'Username',
                      ),
                      const SizedBox(height: 15),
                      LoginTextFields(
                        inputController: password,
                        hintText: 'Password',
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          // You can replace this with actual validation logic

                          // Use the passed userType to navigate to the appropriate page
                          if (widget.userType == 'Tourist') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TouristLandingPage(),
                              ),
                            );
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => OnboardingPages(
                            //       userType: 'Tourist',
                            //     ),
                            //   ),
                            // );
                          } else if (widget.userType == 'Business') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BusinessLandingPage(),
                              ),
                            );
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => OnboardingPages(
                            //       userType: 'Business',
                            //     ),
                            //   ),
                            // );
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MyUtility(context).height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Mycolors().yellow,
                          ),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontFamily: 'BmHanna',
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 20, // Size of the icon
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: SizedBox(
                          width: screenWidth * 0.8,
                          height: screenHeight * 0.045,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white, // White background
                              side: BorderSide(
                                  color: Colors.grey.shade400,
                                  width: 1), // Thin grey border
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8), // Optional rounded corners
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('images/google.png'),
                                const SizedBox(
                                    width: 6), // Space between icon and text
                                Text('Sign Up with Google',
                                    style: MyJbayTextstyle(context)
                                        .regularSmallText
                                        .copyWith(color: Colors.grey.shade400)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.045,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white, // White background
                            side: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1), // Thin grey border
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  8), // Optional rounded corners
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/facebook.png'),
                              const SizedBox(
                                  width: 6), // Space between icon and text
                              Text('Sign Up with Facebook',
                                  style: MyJbayTextstyle(context)
                                      .regularSmallText
                                      .copyWith(color: Colors.grey.shade400)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          style: MyJbayTextstyle(context).regularSmallText,
                          children: [
                            TextSpan(text: "Forgot password? "),
                            TextSpan(
                              text: "Get new",
                              style: MyJbayTextstyle(context)
                                  .regularSmallText
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    color: Mycolors().blue,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: RichText(
                          text: TextSpan(
                            style: MyJbayTextstyle(context).regularSmallText,
                            children: [
                              TextSpan(text: "Do you have an account? "),
                              TextSpan(
                                text: "Create Account",
                                style: MyJbayTextstyle(context)
                                    .regularSmallText
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      color: Mycolors().blue,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MyUtility(context).height > 390 ? -40 : -50,
              right: MyUtility(context).height > 390
                  ? screenWidth * 0.10
                  : screenWidth * 0.15,
              left: MyUtility(context).height > 390
                  ? screenWidth * 0.10
                  : screenWidth * 0.15,
              child: Positioned(
                child: Container(
                  height: MyUtility(context).height > 390
                      ? MyUtility(context).height * 0.36
                      : MyUtility(context).height * 0.40,
                  width: MyUtility(context).width * 0.75,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/myJbayLogo.png'),
                        fit: BoxFit.fill),
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
