import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';

class PaymentSuccessPopup extends StatefulWidget {
  const PaymentSuccessPopup({super.key});

  @override
  _PaymentSuccessPopupState createState() => _PaymentSuccessPopupState();
}

class _PaymentSuccessPopupState extends State<PaymentSuccessPopup>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _waveAnimation;

  @override
  void initState() {
    super.initState();
    // Animation controller for 1 second
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    // Wave animation: Slide from right to center
    _waveAnimation = Tween<Offset>(
      begin: const Offset(1, 0),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      color: Colors.white.withOpacity(0.5), // Semi-transparent white background
      child: Stack(
        alignment: Alignment.center,
        children: [
          // White container with rounded top borders
          Positioned(
            bottom: 0,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.5,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Payment Successful!',
                    style: MyJbayTextstyle(context).blueStyleHeader,
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  // Blue circle with image, now tappable
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Close the popup
                    },
                    child: Container(
                      width: screenWidth * 0.2,
                      height: screenWidth * 0.2,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Mycolors().blue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          'images/payment_successful.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                ],
              ),
            ),
          ),
          // Wave image animation
          Positioned(
            top: screenHeight * 0.1,
            child: SlideTransition(
              position: _waveAnimation,
              child: Image.asset(
                'images/wave_splash.png',
                width: screenWidth,
                height: screenHeight * 0.5,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
