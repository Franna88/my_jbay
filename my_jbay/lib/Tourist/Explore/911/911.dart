import 'package:flutter/material.dart';
import 'package:my_jbay/Tourist/Explore/911/911_containers.dart';
import 'package:my_jbay/Tourist/Explore/JobPost/reusable_jobpost_container.dart';
import 'package:my_jbay/Tourist/Explore/Lost&Found/lost_and_found_container.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/custom_search_bar.dart';

import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class NineOneOne extends StatelessWidget {
  const NineOneOne({super.key});

  @override
  Widget build(BuildContext context) {
    return GreyContainerPageLayout(
      title: '911',
      bodyContent: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  NineOneOneContainer(imagePath: 'images/ambulance.png'),
                  Text(
                    ' AMBULANCE',
                    style: MyJbayTextstyle(context)
                        .blacksStyleSubheader
                        .copyWith(color: Mycolors().blue),
                  ),
                ],
              ),
              SizedBox(height: MyUtility(context).height * 0.02),
              Row(
                children: [
                  Text(
                    'Provincial:',
                    style: MyJbayTextstyle(context).styleSmallText,
                  ),
                  SizedBox(width: MyUtility(context).width * 0.05),
                  Text(
                    '042 291 0020',
                    style: MyJbayTextstyle(context).styleSmallText,
                  ),
                ],
              ),
              SizedBox(height: MyUtility(context).height * 0.05),
              Row(
                children: [
                  NineOneOneContainer(imagePath: 'images/fire_truck.png'),
                  Text(
                    ' FIRE BRIGADE',
                    style: MyJbayTextstyle(context)
                        .blacksStyleSubheader
                        .copyWith(color: Mycolors().blue),
                  ),
                ],
              ),
              SizedBox(height: MyUtility(context).height * 0.02),
              Row(
                children: [
                  Text(
                    'Contact:',
                    style: MyJbayTextstyle(context).styleSmallText,
                  ),
                  SizedBox(width: MyUtility(context).width * 0.05),
                  Text(
                    '112\n042 291 0250\n0813678557',
                    style: MyJbayTextstyle(context).styleSmallText,
                  ),
                ],
              ),
              SizedBox(height: MyUtility(context).height * 0.05),
              Row(
                children: [
                  NineOneOneContainer(imagePath: 'images/nsri.png'),
                  Text(
                    ' NSRI JBAY',
                    style: MyJbayTextstyle(context)
                        .blacksStyleSubheader
                        .copyWith(color: Mycolors().blue),
                  ),
                ],
              ),
              SizedBox(height: MyUtility(context).height * 0.02),
              Row(
                children: [
                  Text(
                    'Contact:',
                    style: MyJbayTextstyle(context).styleSmallText,
                  ),
                  SizedBox(width: MyUtility(context).width * 0.05),
                  Text(
                    '079 916 0390',
                    style: MyJbayTextstyle(context).styleSmallText,
                  ),
                ],
              ),
              SizedBox(height: MyUtility(context).height * 0.05),
              Row(
                children: [
                  NineOneOneContainer(imagePath: 'images/saps.png'),
                  Text(
                    ' SAPS',
                    style: MyJbayTextstyle(context)
                        .blacksStyleSubheader
                        .copyWith(color: Mycolors().blue),
                  ),
                ],
              ),
              SizedBox(height: MyUtility(context).height * 0.02),
              Row(
                children: [
                  Text(
                    'Contact:',
                    style: MyJbayTextstyle(context).styleSmallText,
                  ),
                  SizedBox(width: MyUtility(context).width * 0.05),
                  Text(
                    '072 378 1977\n042 200 6801\n042 200 6833',
                    style: MyJbayTextstyle(context).styleSmallText,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
