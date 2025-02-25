import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class ReusableJobPostContainer extends StatelessWidget {
  final String jobTitle;
  final String companyName;
  final String details;
  final String contactNumber;
  final String address;

  const ReusableJobPostContainer({
    Key? key,
    required this.jobTitle,
    required this.companyName,
    required this.details,
    required this.contactNumber,
    required this.address,
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
                    Text(jobTitle,
                        style: MyJbayTextstyle(context).styleSmallText),
                    const SizedBox(height: 6),
                    Text(
                      companyName,
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    const SizedBox(height: 14),
                    Text("Details:",
                        style: MyJbayTextstyle(context).styleSmallText),
                    const SizedBox(height: 6),
                    Text(details,
                        style: MyJbayTextstyle(context).styleSmallText),
                    const SizedBox(height: 14),
                    Text(
                      "$contactNumber | $address",
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
