import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';

class ReusableTextfield extends StatelessWidget {
  final String title; // Title text above the text field
  final TextInputType keyboardType; // Input type (text, email, number, etc.)
  final TextEditingController controller; // Controller for managing input
  final IconData? icon; // Optional icon for the text field
  final GestureTapCallback? onTap; // Optional onTap function

  const ReusableTextfield({
    super.key,
    required this.title,
    required this.keyboardType,
    required this.controller,
    this.icon, // Optional parameter for icon
    this.onTap, // Optional parameter for onTap functionality
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[500],
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        GestureDetector(
          onTap: onTap, // Trigger onTap if provided
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              prefixIcon: icon != null
                  ? Icon(
                      icon,
                      color: Mycolors().yellow,
                    )
                  : null, // Add icon only if provided
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: Mycolors().blue, // Thin blue border
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: Mycolors().blue, // Blue border on focus
                  width: 1.5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
