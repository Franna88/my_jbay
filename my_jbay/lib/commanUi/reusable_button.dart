import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Function() onTap;
  final double? customWidth; // New parameter for width customization
  final double? customHeight;

  const ReusableButton({
    super.key,
    required this.buttonColor,
    required this.buttonText,
    required this.onTap,
    this.customWidth,
    this.customHeight, // Default value is 0.8
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: customWidth ?? MediaQuery.of(context).size.width * 0.8,
        height: customHeight ?? null,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: buttonColor,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(
              buttonText,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontFamily: 'BmHanna',
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
