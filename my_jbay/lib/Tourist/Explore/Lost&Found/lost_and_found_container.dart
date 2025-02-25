import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class LostAndFoundContainer extends StatelessWidget {
  final String itemLost;

  final String details;
  final String contactNumber;

  const LostAndFoundContainer({
    Key? key,
    required this.itemLost,
    required this.details,
    required this.contactNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      // Allows the container to expand as needed
      child: Container(
        width: MyUtility(context).width * 0.9,
        constraints: BoxConstraints(
          minHeight: MyUtility(context).height * 0.4, // Ensures minimum height
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              width: MyUtility(context).width * 0.9,
              child: Image.asset(
                'images/wave_background.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: MyUtility(context).width * 0.9,
              decoration: BoxDecoration(
                color: Mycolors().blue,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min, // Allows container to expand
                  children: [
                    Text(itemLost,
                        style: MyJbayTextstyle(context).styleSmallText),
                    const SizedBox(height: 6),
                    Text(details,
                        style: MyJbayTextstyle(context).styleSmallText),
                    const SizedBox(height: 14),
                    Text(
                      contactNumber,
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
