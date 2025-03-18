import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';

class MyJbayTextstyle {
  BuildContext context;
  MyJbayTextstyle(this.context);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
  double get minSize => (width + height) / 2; // Average screen dimension

  // Header Styles
  TextStyle get header1 => TextStyle(
        fontFamily: 'BmHanna',
        fontSize: minSize * 0.05, // Responsive size
        fontWeight: FontWeight.w600,
        color: Colors.white,
        letterSpacing: 1,
      );

  TextStyle get blueStyleHeader => TextStyle(
        fontSize: minSize * 0.035, // Adjusted for responsiveness
        fontWeight: FontWeight.normal,
        color: Mycolors().blue,
        fontFamily: 'BmHanna',
        letterSpacing: 1,
      );

  TextStyle get yellowStyleHeader => TextStyle(
        fontSize: minSize * 0.045, // Adjusted for responsiveness
        fontWeight: FontWeight.normal,
        color: Mycolors().yellow,
        fontFamily: 'BmHanna',
        letterSpacing: 1,
      );

  TextStyle get blacksStyleSubheader => TextStyle(
        fontSize: minSize * 0.035, // Adjusted for responsiveness
        fontWeight: FontWeight.normal,
        color: Colors.black,
        fontFamily: 'BmHanna',
        letterSpacing: 1,
      );

  // Body Text Styles

  TextStyle get regularSmallText => TextStyle(
        fontFamily: 'Nunito',
        fontSize: minSize * 0.025, // Adjusted for responsiveness
        fontWeight: FontWeight.w500,
        color: Colors.black,
      );

  TextStyle get smallGreyText => TextStyle(
        fontFamily: 'Nunito',
        fontSize: minSize * 0.025, // Adjusted for responsiveness
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      );

  TextStyle get styleSmallText => TextStyle(
        fontFamily: 'BmHanna',
        fontSize: minSize * 0.025, // Adjusted for responsiveness
        fontWeight: FontWeight.w500,
        color: Colors.black,
      );

  TextStyle get styleSmallerText => TextStyle(
        fontFamily: 'BmHanna',
        fontSize: minSize * 0.02, // Adjusted for responsiveness
        fontWeight: FontWeight.w500,
        color: Colors.black,
      );

  // Custom Style Example
  TextStyle customStyle({
    double fontSize = 14.0,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontFamily: 'BM_HANNA_TTF',
      fontSize: fontSize * (minSize / 500), // Scale with screen size
      fontWeight: fontWeight,
      color: color,
    );
  }
}
