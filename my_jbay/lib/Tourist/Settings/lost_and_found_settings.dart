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

class LostAndFoundSettings extends StatelessWidget {
  final String userName = 'User Name';
  const LostAndFoundSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _phoneController = TextEditingController();
    final TextEditingController _dayController = TextEditingController();
    final TextEditingController _monthController = TextEditingController();
    final TextEditingController _yearController = TextEditingController();

    // Lists for day, month, and year
    final List<String> days =
        List.generate(31, (index) => (index + 1).toString().padLeft(2, '0'));
    final List<String> months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    final List<String> years =
        List.generate(81, (index) => (DateTime.now().year - index).toString());

    // Function to handle selection change
    void _onDayChanged(String? value) {
      _dayController.text = value ?? '';
    }

    void _onMonthChanged(String? value) {
      _monthController.text = value ?? '';
    }

    void _onYearChanged(String? value) {
      _yearController.text = value ?? '';
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.all(20.0), // Added padding for better spacing
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TopPageComponants(
                showText: true,
                text: 'Lost and Found',
              ),
              SizedBox(height: MyUtility(context).height * 0.02),
              SizedBox(
                width: MyUtility(context).width * 0.9,
                child: Column(
                  children: [
                    ReusableTextfield(
                      title: 'Name the item',
                      keyboardType: TextInputType.name,
                      controller: _nameController,
                    ),
                    SizedBox(height: MyUtility(context).height * 0.015),
                    ReusableTextfield(
                      title: 'Short description',
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      maxLines: 5,
                    ),
                    SizedBox(height: MyUtility(context).height * 0.015),
                    ReusableTextfield(
                        title: 'Contact Number',
                        keyboardType: TextInputType.phone,
                        controller: _phoneController,
                        icon: Icon(
                          Icons.phone,
                          color: Mycolors().yellow,
                        )),
                    SizedBox(height: MyUtility(context).height * 0.015),
                    ReusableButton(
                      buttonColor: Mycolors().yellow,
                      buttonText: 'List',
                      onTap: () {},
                      customWidth: MyUtility(context).width * 0.3,
                    ),
                    SizedBox(
                        height: MyUtility(context).height *
                            0.02), // Extra padding at bottom
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
