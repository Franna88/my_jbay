import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class ReusablePageTitle extends StatelessWidget {
  final String title;
  final Color backgroundColor;

  const ReusablePageTitle({
    super.key,
    required this.title,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MyUtility(context).width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: backgroundColor,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            title,
            style: MyJbayTextstyle(context).header1,
          ),
        ),
      ),
    );
  }
}
