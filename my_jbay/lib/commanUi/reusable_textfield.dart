import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';

class ReusableTextfield extends StatelessWidget {
  final String title;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Widget? icon;
  final GestureTapCallback? onTap;
  final int? maxLines; // New optional parameter with default value null

  const ReusableTextfield({
    super.key,
    required this.title,
    required this.keyboardType,
    required this.controller,
    this.icon,
    this.onTap,
    this.maxLines, // Optional, defaults to null
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: MyJbayTextstyle(context).smallGreyText),
        SizedBox(height: 8),
        GestureDetector(
          onTap: onTap,
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            maxLines: maxLines, // Pass maxLines to TextField, null by default
            decoration: InputDecoration(
              prefixIcon: icon,
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: Mycolors().blue,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: Mycolors().blue,
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
