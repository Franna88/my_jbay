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

  ReusableEventContainer({
    required this.imageUrl,
    required this.location,
    required this.dateTime,
    required this.eventTitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => EventDetails()),
        );
      },
      child: Container(
        width: MyUtility(context).width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            // Blue container on the top half
            Container(
              height:
                  MediaQuery.of(context).size.height * 0.25, // Adjust as needed
              decoration: BoxDecoration(
                color: Mycolors().blue,
                borderRadius: BorderRadius.only(
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
            // Text content under the blue container
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row for location, date, and time
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(location,
                          style: MyJbayTextstyle(context).smallGreyText),
                      SizedBox(width: 5),
                      // Vertical divider (line)
                      Container(
                        height: 20, // Adjust height as needed
                        width: 1.5, // Thickness of the vertical line
                        color: Colors.grey, // Color of the line
                      ),
                      SizedBox(width: 5),
                      Text(dateTime,
                          style: MyJbayTextstyle(context).smallGreyText),
                    ],
                  ),
                  // Event title underneath the location and date/time
                  SizedBox(height: 8),
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
