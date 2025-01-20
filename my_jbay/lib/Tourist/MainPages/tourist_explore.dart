import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/commanUi/largeButton.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class TouristExplore extends StatelessWidget {
  const TouristExplore({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MyUtility(context).width,
        height: MyUtility(context).height,
        child: Center(
          child: Stack(
            children: [
              // Grey container background
              Positioned(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MyUtility(context).width,
                      height: MyUtility(context).height * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        color: Mycolors().lightGrey,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: screenWidth * 0.05,
                right: screenWidth * 0.05,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight * 0.15,
                        width: screenWidth * 0.4,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/myJbay_logo_cutoff.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      // Everything Local container
                      Container(
                        width: screenWidth * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Mycolors().blue,
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              'Everything Local',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'BmHanna',
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              )
              // MyJbay logo
            ],
          ),
        ),
      ),
    );
  }
}
