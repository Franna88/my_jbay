import 'package:flutter/material.dart';
import 'package:my_jbay/commanUi/back_button_and_logo.dart';
import 'package:my_jbay/commanUi/category_list.dart';
import 'package:my_jbay/commanUi/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class ArtPage extends StatelessWidget {
  const ArtPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // List of categories with imagePath, title, and unique onTap functionality

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          children: [
            // Top section with Icon and Centered Logo
            BackButtonAndLogo(),
            // Bottom section with categories
            Expanded(
              child: Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Mycolors().lightGrey,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: ReusablePageTitle(
                          title: 'Art', backgroundColor: Mycolors().yellow),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
