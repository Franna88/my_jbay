import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/event_details.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class ReusableEventContainer extends StatelessWidget {
  final String imageUrl;
  final String location;
  final String dateTime;
  final String eventTitle;
  final VoidCallback onTap; // Callback for tap action

  const ReusableEventContainer({
    required this.imageUrl,
    required this.location,
    required this.dateTime,
    required this.eventTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Use the provided callback
      child: Container(
        width: MyUtility(context).width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                color: Mycolors().blue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(location,
                          style: MyJbayTextstyle(context).smallGreyText),
                      const SizedBox(width: 5),
                      Container(
                        height: 20,
                        width: 1.5,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 5),
                      Text(dateTime,
                          style: MyJbayTextstyle(context).smallGreyText),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(eventTitle,
                      style: MyJbayTextstyle(context).blacksStyleSubheader),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
