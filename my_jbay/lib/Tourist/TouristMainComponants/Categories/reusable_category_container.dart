import 'package:flutter/material.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class ReusableCategoryContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String imagePath;
  final String title;

  const ReusableCategoryContainer({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double containerSize = MediaQuery.of(context).size.width * 0.25;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: containerSize,
        height: containerSize + 10,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
              Text(title,
                  textAlign: TextAlign.center,
                  style: MyJbayTextstyle(context)
                      .styleSmallText
                      .copyWith(height: 1)),
            ],
          ),
        ),
      ),
    );
  }
}
