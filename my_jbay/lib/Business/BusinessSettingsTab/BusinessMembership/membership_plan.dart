import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/Business/BusinessSettingsTab/Payment/payment_sucessful.dart';
import 'package:my_jbay/Business/BusinessSettingsTab/reusable_checkbox_group.dart';
import 'package:my_jbay/Business/BusinessSettingsTab/reusable_dropdown.dart';
import 'package:my_jbay/commanUi/largeButton.dart';
import 'package:my_jbay/commanUi/reusable_button.dart';
import 'package:my_jbay/commanUi/reusable_textfield.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';
import 'package:intl/intl.dart';

class MembershipPlan extends StatefulWidget {
  const MembershipPlan({super.key});

  @override
  _MembershipPlanState createState() => _MembershipPlanState();
}

class _MembershipPlanState extends State<MembershipPlan> {
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _uploadMenuController = TextEditingController();

  // Dropdown states
  String? _selectedCredit;

  // Radio button state (single selection)
  String? _selectedPlan;

  // Sample items for dropdowns
  final List<String> creditOptions = [
    'X1 Advert',
    'X3 Adverts',
    'X5 Adverts',
    'X10 Adverts',
  ];

  // Membership plans for radio group
  final List<String> membershipPlans = [
    'Starter Business R99pm',
    'Large Business R145pm',
  ];

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
                text: 'Membership Plan',
              ),
              SizedBox(height: MyUtility(context).height * 0.04),
              SizedBox(
                width: MyUtility(context).width * 0.9,
                child: Column(
                  children: [
                    Text(
                      'List my business!',
                      style: MyJbayTextstyle(context).blueStyleHeader,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableCheckboxGroup(
                      label: 'Select Business Plan',
                      options: membershipPlans,
                      selectedOption: _selectedPlan,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedPlan = value;
                        });
                      },
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableDropdown(
                      label: 'Buy Credit for advertising',
                      items: creditOptions,
                      value: _selectedCredit,
                      onChanged: (value) {
                        setState(() {
                          _selectedCredit = value;
                        });
                      },
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableButton(
                      buttonColor: Mycolors().yellow,
                      buttonText: 'Pay',
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
