import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/Business/BusinessSettingsTab/business_edit_profile.dart';
import 'package:my_jbay/Tourist/Settings/edit_profile_tourist.dart';
import 'package:my_jbay/commanUi/largeButton.dart';
import 'package:my_jbay/commanUi/reusable_button.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class BusinessSettings extends StatelessWidget {
  final String userName = 'User Name';
  const BusinessSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MyUtility(context).width,
        height: MyUtility(context).height,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Settings',
                  style: MyJbayTextstyle(context).yellowStyleHeader,
                ),
                SizedBox(height: MyUtility(context).height * 0.02),
                Container(
                  width: MyUtility(context).width * 0.35,
                  height: MyUtility(context).width * 0.35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Mycolors().lightBlue, // Placeholder color
                  ),
                ),
                SizedBox(height: MyUtility(context).height * 0.02),
                Text(
                  userName,
                  style: MyJbayTextstyle(context).blueStyleHeader,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: MyUtility(context).height * 0.03),
                ReusableButton(
                    buttonColor: Mycolors().yellow,
                    buttonText: 'Edit Profile',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfileBusiness(),
                        ),
                      );
                    }),
                SizedBox(height: MyUtility(context).height * 0.015),
                ReusableButton(
                    buttonColor: Mycolors().yellow,
                    buttonText: 'Business Membership',
                    onTap: () {}),
                SizedBox(height: MyUtility(context).height * 0.015),
                ReusableButton(
                    buttonColor: Mycolors().yellow,
                    buttonText: 'Place an Advert',
                    onTap: () {}),
                SizedBox(height: MyUtility(context).height * 0.015),
                ReusableButton(
                    buttonColor: Mycolors().yellow,
                    buttonText: 'List an Event',
                    onTap: () {}),
                SizedBox(height: MyUtility(context).height * 0.015),
                ReusableButton(
                    buttonColor: Mycolors().yellow,
                    buttonText: 'Lost and Found',
                    onTap: () {}),
                SizedBox(height: MyUtility(context).height * 0.015),
                ReusableButton(
                    buttonColor: Mycolors().yellow,
                    buttonText: 'Log Out',
                    onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
