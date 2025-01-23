import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/commanUi/largeButton.dart';
import 'package:my_jbay/commanUi/reusable_button.dart';
import 'package:my_jbay/commanUi/reusable_textfield.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';
import 'package:intl/intl.dart';

class BusinessMembership extends StatelessWidget {
  final String businessName = 'Business Name';
  const BusinessMembership({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _phoneController = TextEditingController();
    final TextEditingController _addressController = TextEditingController();
    final TextEditingController _websiteController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MyUtility(context).width,
        height: MyUtility(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TopPageComponants(
              showText: true,
              text: 'Business Membership-',
            ),
            SizedBox(height: MyUtility(context).height * 0.02),
            Stack(
              alignment: Alignment.center,
              children: [
                // Blue circle
                Container(
                  width: MyUtility(context).width * 0.35,
                  height: MyUtility(context).width * 0.35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Mycolors().lightBlue, // Placeholder color
                  ),
                ),
                // Small grey circle with edit icon
                Positioned(
                  bottom: 5, // Adjust as needed
                  right: 5, // Adjust as needed
                  child: Container(
                    width: MyUtility(context).width *
                        0.08, // Adjust size as needed
                    height: MyUtility(context).width *
                        0.08, // Adjust size as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300], // Grey color
                    ),
                    child: Icon(
                      Icons.edit,
                      size: MyUtility(context).width *
                          0.04, // Adjust size as needed
                      color: Mycolors().blue, // Icon color
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MyUtility(context).height * 0.02),
            SizedBox(
              width: MyUtility(context).width * 0.9,
              child: Column(
                children: [
                  Text(
                    businessName,
                    style: MyJbayTextstyle(context).blueStyleHeader,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: MyUtility(context).height * 0.03),
                  ReusableTextfield(
                    title: 'Business Name',
                    keyboardType: TextInputType.name,
                    controller: _nameController,
                    icon: Icons.person,
                  ),
                  SizedBox(height: MyUtility(context).height * 0.015),
                  ReusableTextfield(
                    title: 'Email Address',
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    icon: Icons.email,
                  ),
                  SizedBox(height: MyUtility(context).height * 0.015),
                  ReusableTextfield(
                    title: 'Phone Number',
                    keyboardType: TextInputType.phone,
                    controller: _phoneController,
                    icon: Icons.phone,
                  ),
                  SizedBox(height: MyUtility(context).height * 0.015),
                  ReusableTextfield(
                    title: 'Address',
                    keyboardType: TextInputType.streetAddress,
                    controller: _addressController,
                    icon: Icons.location_on,
                  ),
                  SizedBox(height: MyUtility(context).height * 0.015),
                  ReusableTextfield(
                    title: 'Website',
                    keyboardType: TextInputType.url,
                    controller: _websiteController,
                    icon: Icons.web,
                  ),
                  SizedBox(height: MyUtility(context).height * 0.05),
                  ReusableButton(
                    buttonColor: Mycolors().yellow,
                    buttonText: 'Save',
                    onTap: () {},
                    customWidth: MyUtility(context).width * 0.3,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
