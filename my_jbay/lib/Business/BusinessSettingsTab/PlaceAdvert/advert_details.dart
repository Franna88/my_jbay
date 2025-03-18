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

class AdvertDetails extends StatelessWidget {
  final String businessName = 'Business Name';
  const AdvertDetails({super.key});

  // Add the popup function
  Future _openPaymentSuccessPopup(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          return const Dialog(
            alignment: Alignment.center,
            insetPadding: EdgeInsets.all(0),
            backgroundColor: Colors.transparent,
            child: PaymentSuccessPopup(),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    final TextEditingController _specialNameController =
        TextEditingController();
    final TextEditingController _specialDescriptionController =
        TextEditingController();
    final TextEditingController _phoneController = TextEditingController();
    final TextEditingController _addressController = TextEditingController();
    final TextEditingController _runningDateController =
        TextEditingController();

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
                text: 'Place an Advert',
              ),
              SizedBox(height: MyUtility(context).height * 0.02),
              SizedBox(
                width: MyUtility(context).width * 0.9,
                child: Column(
                  children: [
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Title of Special',
                      keyboardType: TextInputType.name,
                      controller: _specialNameController,
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Short Description',
                      keyboardType: TextInputType.emailAddress,
                      controller: _specialDescriptionController,
                      maxLines: 5,
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Running Dates',
                      keyboardType: TextInputType.url,
                      controller: _runningDateController,
                      icon: Icon(
                        Icons.language,
                        color: Mycolors().yellow,
                      ),
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Conact Number',
                      keyboardType: TextInputType.url,
                      controller: _phoneController,
                      icon: Icon(
                        Icons.facebook,
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
                      onTap: () => _openPaymentSuccessPopup(context),
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
