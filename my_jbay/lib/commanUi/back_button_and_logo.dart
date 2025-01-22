import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class BackButtonAndLogo extends StatelessWidget {
  const BackButtonAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Centered Logo
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0), // Adjust as needed
            child: Image.asset(
              'images/myJbay_top_page_logo.png',
              width: MyUtility(context).width * 0.5, // Adjusted width
              height: MyUtility(context).height * 0.12, // Adjusted height
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Icon on the left
        Positioned(
          left: 0,
          top: 20,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Mycolors().blue,
              size: 60, // Size of the icon
            ),
            onPressed: () {
              Navigator.pop(context); // Navigate back to the previous page
            },
          ),
        ),
      ],
    );
  }
}
