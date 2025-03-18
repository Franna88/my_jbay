import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';

class ReusableCheckboxGroup extends StatelessWidget {
  final String label; // Label above the group (e.g., "Membership Plans")
  final List<String>
      options; // List of options (e.g., ["Starter Business R99pm", "Large Business R145pm"])
  final String? selectedOption; // Currently selected option (single selection)
  final ValueChanged<String?> onChanged; // Callback when selection changes

  const ReusableCheckboxGroup({
    super.key,
    required this.label,
    required this.options,
    required this.selectedOption,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[500],
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Mycolors().blue, // Thin blue border
              width: 1,
            ),
          ),
          child: Column(
            children: options.asMap().entries.map((entry) {
              final index = entry.key;
              final option = entry.value;

              // Split the option into name and amount (e.g., "Starter Business" and "R99pm")
              final RegExp amountRegex = RegExp(r'(R\d+pm)');
              final match = amountRegex.firstMatch(option);
              final name = match != null
                  ? option.substring(0, match.start).trim()
                  : option;
              final amount = match != null ? option.substring(match.start) : '';

              return Column(
                children: [
                  RadioListTile<String>(
                    value: option,
                    groupValue: selectedOption,
                    onChanged: (String? value) {
                      onChanged(value); // Notify parent of single selection
                    },
                    title: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text:
                                  name, // "Starter Business" or "Large Business"
                              style: MyJbayTextstyle(context).smallGreyText),
                          TextSpan(
                            text: '  ', // Add space between name and amount
                            style: const TextStyle(
                              color: Colors
                                  .black, // Space inherits black (won't be visible)
                            ),
                          ),
                          TextSpan(
                              text: amount, // "R99pm" or "R145pm"
                              style: MyJbayTextstyle(context).blueStyleHeader),
                        ],
                      ),
                    ),
                    controlAffinity:
                        ListTileControlAffinity.leading, // Radio on the left
                    activeColor: Mycolors().yellow, // Yellow when selected
                    contentPadding: EdgeInsets.zero, // Remove extra padding
                  ),
                  // Add divider if not the last item and more than one option
                  if (index < options.length - 1 && options.length > 1)
                    Divider(
                      color: Colors.grey[300], // Light grey divider
                      thickness: 1,
                      height: 1, // Minimal height
                    ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
