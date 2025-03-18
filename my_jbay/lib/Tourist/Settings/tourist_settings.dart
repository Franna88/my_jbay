import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/Business/BusinessSettingsTab/BusinessMembership/become_business_member.dart';
import 'package:my_jbay/Tourist/Settings/edit_profile_tourist.dart';
import 'package:my_jbay/Tourist/Settings/logout_pop_up.dart';
import 'package:my_jbay/Tourist/Settings/lost_and_found_settings.dart';
import 'package:my_jbay/commanUi/reusable_button.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';
import 'package:my_jbay/constants/navbar_controller.dart';
import 'package:provider/provider.dart';

class TouristSettings extends StatelessWidget {
  final String userName = 'User Name';
  const TouristSettings({super.key});

  // Add the logout popup function
  Future _openLogoutPopup(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          return const Dialog(
            alignment: Alignment.center,
            insetPadding: EdgeInsets.all(0),
            backgroundColor: Colors.transparent,
            child: LogoutPopup(),
          );
        },
      );

  // Helper method to navigate to BecomeBusinessMember
  void _navigateToBusinessOnboarding(BuildContext context) {
    // Hide navbar before navigation
    Provider.of<NavbarVisibilityProvider>(context, listen: false).hideNavbar();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BecomeBusinessMember(),
      ),
    );
  }

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
                    color: Mycolors().lightBlue,
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
                        builder: (context) => EditProfileTourist(),
                      ),
                    );
                  },
                ),
                SizedBox(height: MyUtility(context).height * 0.015),
                ReusableButton(
                  buttonColor: Mycolors().yellow,
                  buttonText: 'Lost and Found',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LostAndFoundSettings(),
                      ),
                    );
                  },
                ),
                SizedBox(height: MyUtility(context).height * 0.015),
                ReusableButton(
                  buttonColor: Mycolors().yellow,
                  buttonText: 'Become Business Owner',
                  onTap: () => _navigateToBusinessOnboarding(context),
                ),
                SizedBox(height: MyUtility(context).height * 0.015),
                ReusableButton(
                  buttonColor: Mycolors().yellow,
                  buttonText: 'Log Out',
                  onTap: () => _openLogoutPopup(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
