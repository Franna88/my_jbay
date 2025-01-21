import 'package:flutter/material.dart';

class MyJbayTextstyle {
  BuildContext context;
  MyJbayTextstyle(this.context);

  double get width => MediaQuery.of(context).size.width;
  // Header Styles
  TextStyle get header1 => TextStyle(
        fontFamily: 'BmHanna',
        fontSize: width / 6.5,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  // Body Text Styles

  TextStyle get regularSmallText => TextStyle(
        fontFamily: 'Nunito',
        fontSize: width / 26,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      );

  TextStyle get styleSmallText => TextStyle(
        fontFamily: 'BmHanna',
        fontSize: width / 26,
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
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
