import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Function() onTap;
  const LargeButton(
      {super.key,
      required this.buttonColor,
      required this.buttonText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: buttonColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3), // Shadow color with opacity
              offset: Offset(0, 4), // Horizontal and vertical offset
              blurRadius: 4, // How much the shadow is blurred
            ),
          ],
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              buttonText,
              style: const TextStyle(
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
    );
  }
}
