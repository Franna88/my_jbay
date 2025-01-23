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

class EditProfileBusiness extends StatelessWidget {
  final String userName = 'User Name';
  const EditProfileBusiness({super.key});

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
    final List<String> years = List.generate(
        81,
        (index) => (DateTime.now().year - index)
            .toString()); // From current year to 80 years ago

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
      body: SizedBox(
        width: MyUtility(context).width,
        height: MyUtility(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TopPageComponants(
              showText: true,
              text: 'Edit Profile',
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
                    userName,
                    style: MyJbayTextstyle(context).blueStyleHeader,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: MyUtility(context).height * 0.03),
                  ReusableTextfield(
                    title: 'Name',
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Birth Date',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Day dropdown
                          Expanded(
                            flex: 1, // Less width for the day dropdown
                            child: DropdownButtonFormField<String>(
                              value: _dayController.text.isNotEmpty
                                  ? _dayController.text
                                  : null,
                              items: days.map((day) {
                                return DropdownMenuItem<String>(
                                  value: day,
                                  child: Text(day),
                                );
                              }).toList(),
                              onChanged: _onDayChanged,
                              decoration: InputDecoration(
                                hintText: 'Day',
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                    color: Mycolors().blue, // Thin blue border
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                    color:
                                        Mycolors().blue, // Blue border on focus
                                    width: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: MyUtility(context).width * 0.02),
                          // Month dropdown
                          Expanded(
                            flex: 2, // Wider width for the month dropdown
                            child: DropdownButtonFormField<String>(
                              value: _monthController.text.isNotEmpty
                                  ? _monthController.text
                                  : null,
                              items: months.map((month) {
                                return DropdownMenuItem<String>(
                                  value: month,
                                  child: Text(month),
                                );
                              }).toList(),
                              onChanged: _onMonthChanged,
                              decoration: InputDecoration(
                                hintText: 'Month',
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                    color: Mycolors().blue, // Thin blue border
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                    color:
                                        Mycolors().blue, // Blue border on focus
                                    width: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: MyUtility(context).width * 0.02),
                          // Year dropdown
                          Expanded(
                            flex: 1, // Less width for the year dropdown
                            child: DropdownButtonFormField<String>(
                              value: _yearController.text.isNotEmpty
                                  ? _yearController.text
                                  : null,
                              items: years.map((year) {
                                return DropdownMenuItem<String>(
                                  value: year,
                                  child: Text(year),
                                );
                              }).toList(),
                              onChanged: _onYearChanged,
                              decoration: InputDecoration(
                                hintText: 'Year',
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w500,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                    color: Mycolors().blue, // Thin blue border
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                    color:
                                        Mycolors().blue, // Blue border on focus
                                    width: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
