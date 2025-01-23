import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class TopPageComponants extends StatelessWidget {
  final bool showLogo; // Show logo if true
  final bool showText; // Show text if true
  final String? text; // Text to display if showText is true

  const TopPageComponants({
    super.key,
    this.showLogo = false,
    this.showText = false,
    this.text,
  }) : assert(!(showLogo && showText),
            'Cannot show both logo and text simultaneously.');

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Centered Logo
        if (showLogo)
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset(
                'images/myJbay_top_page_logo.png',
                width: MyUtility(context).width * 0.5,
                height: MyUtility(context).height * 0.12,
                fit: BoxFit.cover,
              ),
            ),
          ),
        // Centered Text
        if (showText && text != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, top: 30),
            child: Center(
              child: Text(
                text!,
                style: MyJbayTextstyle(context).yellowStyleHeader,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        // Back Button
        Positioned(
          left: 10,
          top: 20,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Mycolors().blue,
              size: 60,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}
