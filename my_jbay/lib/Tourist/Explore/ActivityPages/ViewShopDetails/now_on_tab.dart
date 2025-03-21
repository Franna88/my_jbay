import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/event_details.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/ViewBusinesses/business_listing.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/reusable_event_container.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/ViewBusinesses/view_business_page_layout.dart';
import 'package:my_jbay/commanUi/reusable_button.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class NowOnTab extends StatelessWidget {
  final Function(Widget) onContentChanged;

  const NowOnTab({super.key, required this.onContentChanged});

  @override
  Widget build(BuildContext context) {
    return ViewBusinessPageLayout(
      title: 'Now On',
      bodyContent: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: MyUtility(context).height * 0.045),
            ReusableEventContainer(
              imageUrl: 'images/event_paint.png',
              location: 'Location',
              dateTime: 'date and time',
              eventTitle: 'Event Title',
              onTap: () => onContentChanged(
                  EventDetails(onContentChanged: onContentChanged)),
            ),
            SizedBox(height: MyUtility(context).height * 0.05),
            ReusableEventContainer(
              imageUrl: 'images/event_padel.png',
              location: 'Location',
              dateTime: 'date and time',
              eventTitle: 'Event Title',
              onTap: () => onContentChanged(
                  EventDetails(onContentChanged: onContentChanged)),
            ),
            SizedBox(height: MyUtility(context).height * 0.05),
          ],
        ),
      ),
    );
  }
}
