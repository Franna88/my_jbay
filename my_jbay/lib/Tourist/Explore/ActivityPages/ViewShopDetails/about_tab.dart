import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/ViewBusinesses/action_button.dart';
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
import 'package:url_launcher/url_launcher.dart';

class AboutTab extends StatelessWidget {
  final String shopName = 'Shop Name';
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewBusinessPageLayout(
      title: shopName,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: MyUtility(context).height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ActionButton(
                      icon: Icons.language,
                      text: 'Visit Website',
                      actionUrl:
                          'https://placeholderlink.com', // Replace with actual URL
                    ),
                    SizedBox(width: 8),
                    ActionButton(
                      icon: Icons.call,
                      text: 'Call Us',
                      actionUrl:
                          'tel:+1234567890', // Replace with actual number
                    ),
                  ],
                ),
                SizedBox(height: MyUtility(context).height * 0.05),

                Text(
                  'This is a shop listing description',
                  style: MyJbayTextstyle(context)
                      .regularSmallText
                      .copyWith(color: Colors.white),
                ),

                // Website Button

                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/insta.png'),
                    Image.asset('images/tiktok.png'),
                    Image.asset('images/facebook_style.png'),
                  ],
                ),
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
        ],
      ),
    );
  }
}
