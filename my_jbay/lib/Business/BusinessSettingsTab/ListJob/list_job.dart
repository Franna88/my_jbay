import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/Business/BusinessSettingsTab/BusinessMembership/shopfront.dart';
import 'package:my_jbay/Business/BusinessSettingsTab/Payment/payment_sucessful.dart';
import 'package:my_jbay/commanUi/largeButton.dart';
import 'package:my_jbay/commanUi/reusable_button.dart';
import 'package:my_jbay/commanUi/reusable_textfield.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';
import 'package:intl/intl.dart';

class ListJob extends StatelessWidget {
  final String businessName = 'Business Name';
  const ListJob({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _jobNameController = TextEditingController();
    final TextEditingController _jobDescriptionController =
        TextEditingController();
    final TextEditingController _phoneController = TextEditingController();
    final TextEditingController _addressController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _facebookController = TextEditingController();

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
                text: 'List Event',
              ),
              SizedBox(height: MyUtility(context).height * 0.02),
              SizedBox(
                width: MyUtility(context).width * 0.9,
                child: Column(
                  children: [
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Job Name',
                      keyboardType: TextInputType.name,
                      controller: _jobNameController,
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Job Description',
                      keyboardType: TextInputType.emailAddress,
                      controller: _jobDescriptionController,
                      maxLines: 5,
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Email',
                      keyboardType: TextInputType.url,
                      controller: _emailController,
                      icon: Icon(
                        Icons.email,
                        color: Mycolors().yellow,
                      ),
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Conact Number',
                      keyboardType: TextInputType.url,
                      controller: _phoneController,
                      icon: Icon(
                        Icons.phone,
                        color: Mycolors().yellow,
                      ),
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Address',
                      keyboardType: TextInputType.url,
                      controller: _addressController,
                      icon: Icon(
                        Icons.location_on,
                        color: Mycolors().yellow,
                      ),
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableButton(
                      buttonColor: Mycolors().yellow,
                      buttonText: 'List',
                      onTap: () {},
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
