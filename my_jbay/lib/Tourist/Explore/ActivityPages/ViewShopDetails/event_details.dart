import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/ActivityPages/ViewShopDetails/now_on_tab.dart';

import 'package:my_jbay/Tourist/TouristMainComponants/ViewBusinesses/business_listing.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/ViewBusinesses/view_business_page_layout.dart';
import 'package:my_jbay/commanUi/reusable_button.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class EventDetails extends StatelessWidget {
  final String eventDetails = 'Event Details';
  final Function(Widget)? onContentChanged;

  const EventDetails({
    super.key,
    this.onContentChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ViewBusinessPageLayout(
      title: eventDetails,
      onBackPressed: onContentChanged != null
          ? (widget) =>
              onContentChanged!(NowOnTab(onContentChanged: onContentChanged!))
          : null,
      bodyContent: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: MyUtility(context).height * 0.045),
          Container(
            width: MyUtility(context).width * 0.9,
            height: MyUtility(context).height * 0.6,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: Mycolors().blue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          eventDetails,
                          style: MyJbayTextstyle(context)
                              .regularSmallText
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                        if (onContentChanged != null)
                          IconButton(
                            icon: const Icon(Icons.arrow_back,
                                color: Colors.white),
                            onPressed: () => onContentChanged!(
                                NowOnTab(onContentChanged: onContentChanged!)),
                          ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'This is a event details',
                    style: MyJbayTextstyle(context)
                        .regularSmallText
                        .copyWith(color: Colors.white),
                  ),
                  const Spacer(),
                  SizedBox(height: MyUtility(context).height * 0.03),
                  ReusableButton(
                    buttonColor: Mycolors().yellow,
                    buttonText: 'Add to MY Jbay',
                    onTap: () {},
                    customHeight: MyUtility(context).height * 0.05,
                    customWidth: MyUtility(context).width * 0.4,
                  ),
                  SizedBox(height: MyUtility(context).height * 0.05),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
