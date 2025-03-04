// lib/commanUi/action_button.dart
import 'package:flutter/material.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_jbay/constants/myColors.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final String actionUrl; // URL or tel: number
  final VoidCallback? onError; // Optional custom error handler

  const ActionButton({
    super.key,
    required this.icon,
    required this.text,
    required this.actionUrl,
    this.onError,
  });

  Future<void> _launchAction(BuildContext context) async {
    final url = Uri.parse(actionUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      if (onError != null) {
        onError!();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not launch $actionUrl')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => _launchAction(context),
      icon: Icon(icon, color: Colors.white),
      label: Text(text,
          style: MyJbayTextstyle(context)
              .styleSmallText
              .copyWith(color: Colors.white)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Mycolors().yellow, // Button background
        foregroundColor: Mycolors().yellow, // Text/icon color on press
        padding: EdgeInsets.symmetric(
          horizontal: MyUtility(context).width * 0.08 > 20.0
              ? MyUtility(context).width * 0.08
              : 20.0,
          vertical: MyUtility(context).height * 0.030 > 15.0
              ? MyUtility(context).height * 0.030
              : 15.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
      ),
    );
  }
}
