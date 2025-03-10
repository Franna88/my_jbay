// lib/commanUi/action_button.dart
import 'package:flutter/material.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_jbay/constants/myColors.dart';

class ActionButton extends StatefulWidget {
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

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  bool _isHovered = false;

  Future<void> _launchAction(BuildContext context) async {
    final url = Uri.parse(widget.actionUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      if (widget.onError != null) {
        widget.onError!();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not launch ${widget.actionUrl}')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: ElevatedButton.icon(
        onPressed: () => _launchAction(context),
        icon: Icon(widget.icon, color: Mycolors().blue), // Blue icon
        label: Text(
          widget.text,
          style: MyJbayTextstyle(context)
              .styleSmallText
              .copyWith(color: Mycolors().blue), // Blue text
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor:
              _isHovered ? Colors.lightBlue : Colors.white, // Changes on hover
          foregroundColor: Mycolors().blue, // Color when pressed
          side: BorderSide(color: Mycolors().blue, width: 2), // Blue border
          padding: EdgeInsets.symmetric(
            horizontal: MyUtility(context).width * 0.08 > 20.0
                ? MyUtility(context).width * 0.08
                : 20.0,
            vertical: MyUtility(context).height * 0.030 > 15.0
                ? MyUtility(context).height * 0.030
                : 15.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // Rounded corners
          ),
          elevation: 0, // Flat look
        ),
      ),
    );
  }
}
