import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/ViewBusinesses/business_listing.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/custom_search_bar.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/grey_container_page_layout.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/category_list.dart';
import 'package:my_jbay/Tourist/TouristMainComponants/Categories/reusable_category_container.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class WaveMapTab extends StatefulWidget {
  const WaveMapTab({super.key});

  @override
  State<WaveMapTab> createState() => _WaveMapTabState();
}

class _WaveMapTabState extends State<WaveMapTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MyUtility(context).width,
        height: MyUtility(context).height,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MyUtility(context).width * 0.25,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Mycolors().blue,
                      size: 50,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: CustomSearchBar(),
                  ),
                ),
                Image.asset(
                  'images/myJbay_top_page_logo.png',
                  width: MyUtility(context).width * 0.25,
                  height: MyUtility(context).width * 0.15,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MyUtility(context).width,
                      height: MyUtility(context).height,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        color: Mycolors().lightGrey,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: MyUtility(context).height * 0.02),
                          Image.asset(
                            'images/wave_map.png',
                            width: MyUtility(context).width * 0.9,
                            height: MyUtility(context).height * 0.8,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
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
