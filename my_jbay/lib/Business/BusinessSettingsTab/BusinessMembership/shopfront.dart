import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_jbay/Business/BusinessSettingsTab/BusinessMembership/membership_plan.dart';
import 'package:my_jbay/Business/BusinessSettingsTab/reusable_dropdown.dart';
import 'package:my_jbay/commanUi/largeButton.dart';
import 'package:my_jbay/commanUi/reusable_button.dart';
import 'package:my_jbay/commanUi/reusable_textfield.dart';
import 'package:my_jbay/commanUi/top_page_componants.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';
import 'package:intl/intl.dart';

class Shopfront extends StatefulWidget {
  final String businessName = 'Business Name';
  const Shopfront({super.key});

  @override
  _ShopfrontState createState() => _ShopfrontState();
}

class _ShopfrontState extends State<Shopfront> {
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _uploadMenuController = TextEditingController();

  // Dropdown states
  String? _selectedCategory;
  String? _selectedType;

  // Sample items for dropdowns
  final List<String> businessCategories = [
    'Retail',
    'Food & Beverage',
    'Services',
    'Technology',
  ];

  final List<String> businessTypes = [
    'Sole Proprietorship',
    'Partnership',
    'Corporation',
    'LLC',
  ];

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
                text: 'Your Shopfront',
              ),
              SizedBox(height: MyUtility(context).height * 0.02),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: MyUtility(context).width * 0.35,
                        height: MyUtility(context).width * 0.35,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Mycolors().lightGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Upload a cover photo',
                              textAlign: TextAlign.center,
                              style: MyJbayTextstyle(context)
                                  .regularSmallText
                                  .copyWith(color: Colors.white),
                              softWrap: true,
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0, MyUtility(context).width * 0.18),
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
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: MyUtility(context).width * 0.35,
                        height: MyUtility(context).width * 0.35,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Mycolors().lightGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Upload a cover photo',
                              textAlign: TextAlign.center,
                              style: MyJbayTextstyle(context)
                                  .regularSmallText
                                  .copyWith(color: Colors.white),
                              softWrap: true,
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0, MyUtility(context).width * 0.18),
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
                ],
              ),
              SizedBox(height: MyUtility(context).height * 0.04),
              SizedBox(
                width: MyUtility(context).width * 0.9,
                child: Column(
                  children: [
                    Text(
                      widget.businessName,
                      style: MyJbayTextstyle(context).blueStyleHeader,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableDropdown(
                      label: 'Business Category',
                      items: businessCategories,
                      value: _selectedCategory,
                      onChanged: (value) {
                        setState(() {
                          _selectedCategory = value;
                        });
                      },
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableDropdown(
                      label: 'Business Type',
                      items: businessTypes,
                      value: _selectedType,
                      onChanged: (value) {
                        setState(() {
                          _selectedType = value;
                        });
                      },
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Business Description',
                      keyboardType: TextInputType.text,
                      controller: _descriptionController,
                      maxLines: 5,
                    ),
                    SizedBox(height: MyUtility(context).height * 0.03),
                    ReusableTextfield(
                      title: 'Upload Menu/Catelogue',
                      keyboardType: TextInputType.url,
                      controller: _uploadMenuController,
                      icon: Icon(
                        Icons.location_on,
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
                            builder: (context) => MembershipPlan(),
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
