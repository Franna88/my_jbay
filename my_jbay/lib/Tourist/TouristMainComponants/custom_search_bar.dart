import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300, // Grey background
        borderRadius: BorderRadius.circular(30), // Round borders
        border: Border.all(color: Mycolors().blue, width: 2), // Blue border
      ),
      // padding: EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Image.asset(
              'images/search.png',
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                style: MyJbayTextstyle(context)
                    .styleSmallText
                    .copyWith(color: Colors.white), // White text
                cursorColor: Mycolors().blue,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: MyJbayTextstyle(context)
                      .styleSmallText
                      .copyWith(color: Colors.white), // White hint text
                  border: InputBorder.none, // No default underline
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
