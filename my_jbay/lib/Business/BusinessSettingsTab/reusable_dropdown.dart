import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';

class ReusableDropdown extends StatelessWidget {
  final String
      label; // Label text above the dropdown (e.g., "Business Category")
  final List<String> items; // List of dropdown options
  final String? value; // Currently selected value
  final ValueChanged<String?>? onChanged; // Callback when selection changes

  const ReusableDropdown({
    super.key,
    required this.label,
    required this.items,
    this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: MyJbayTextstyle(context).smallGreyText),
        SizedBox(height: 8), // Space between label and dropdown
        DropdownButtonFormField<String>(
          value: value, // Selected value, null if nothing is selected
          items: items.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: onChanged, // Triggered when a new item is selected
          decoration: InputDecoration(
            hintText: '-select-', // Fixed hint text
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
                color: Mycolors().blue, // Blue border on focus
                width: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
