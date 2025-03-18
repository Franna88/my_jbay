import 'package:flutter/material.dart';
import 'package:my_jbay/MainLandingPage/landingPage.dart';
import 'package:my_jbay/commanUi/reusable_button.dart';
import 'package:my_jbay/constants/myColors.dart';

class LogoutPopup extends StatefulWidget {
  const LogoutPopup({super.key});

  @override
  State<LogoutPopup> createState() => _LogoutPopupState();
}

class _LogoutPopupState extends State<LogoutPopup> {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Calculate responsive dimensions
    final double popupWidth = screenWidth * 0.8; // 80% of screen width
    final double popupHeight = screenHeight * 0.25; // 25% of screen height
    final double padding = screenWidth * 0.05; // 5% of screen width
    final double fontSize = screenWidth * 0.045; // Scales with screen width
    final double buttonWidth = popupWidth * 0.35; // 35% of popup width
    final double buttonHeight = screenHeight * 0.06; // 6% of screen height

    return Container(
      width: popupWidth.clamp(250, 400), // Min 250, Max 400
      height: popupHeight.clamp(150, 250), // Min 150, Max 250
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                "Are you sure you want to log out?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: fontSize.clamp(16, 20), // Min 16, Max 20
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade800),
              ),
            ),
            SizedBox(height: padding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableButton(
                    buttonColor: Mycolors().yellow,
                    buttonText: "Logout",
                    customWidth: buttonWidth,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LandingPage(),
                        ),
                      );
                    }),
                ReusableButton(
                    buttonColor: Mycolors().yellow,
                    buttonText: "Cancel",
                    customWidth: buttonWidth,
                    onTap: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
