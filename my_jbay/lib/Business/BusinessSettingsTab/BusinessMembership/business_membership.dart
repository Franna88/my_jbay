import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/Business/BusinessSettingsTab/BusinessMembership/shopfront.dart';
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
    final TextEditingController _facebookController = TextEditingController();
    final TextEditingController _instagramController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: MyUtility(context).width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TopPageComponants(
                showText: true,
                text: 'Business Membership',
              ),
              SizedBox(height: MyUtility(context).height * 0.02),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MyUtility(context).width * 0.35,
                    height: MyUtility(context).width * 0.35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Mycolors().lightGrey,
                    ),
                    child: Center(
                        child: Text(
                      'Upload Logo',
                      textAlign: TextAlign.center,
                      style: MyJbayTextstyle(context)
                          .regularSmallText
                          .copyWith(color: Colors.white),
                    )),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: Container(
                      width: MyUtility(context).width * 0.08,
                      height: MyUtility(context).width * 0.08,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Mycolors().blue,
                      ),
                      child: Icon(
                        Icons.upload,
                        size: MyUtility(context).width * 0.04,
                        color: Colors.white,
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
                      icon: Icon(
                        Icons.person,
                        color: Mycolors().yellow, // Match your styling
                      ),
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Email Address',
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      icon: Icon(
                        Icons.email,
                        color: Mycolors().yellow,
                      ),
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Phone Number',
                      keyboardType: TextInputType.phone,
                      controller: _phoneController,
                      icon: Icon(
                        Icons.phone,
                        color: Mycolors().yellow,
                      ),
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Address',
                      keyboardType: TextInputType.streetAddress,
                      controller: _addressController,
                      icon: Icon(
                        Icons.location_on,
                        color: Mycolors().yellow,
                      ),
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Website',
                      keyboardType: TextInputType.url,
                      controller: _websiteController,
                      icon: Icon(
                        Icons.language,
                        color: Mycolors().yellow,
                      ),
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Facebook',
                      keyboardType: TextInputType.url,
                      controller: _facebookController,
                      icon: Icon(
                        Icons.facebook,
                        color: Mycolors().yellow,
                      ),
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Instagram',
                      keyboardType: TextInputType.url,
                      controller: _instagramController,
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: Mycolors().yellow,
                      ),
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableButton(
                      buttonColor: Mycolors().yellow,
                      buttonText: 'Next',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Shopfront(),
                          ),
                        );
                      },
                      customWidth: MyUtility(context).width * 0.3,
                    ),
                    SizedBox(height: MyUtility(context).height * 0.02),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
