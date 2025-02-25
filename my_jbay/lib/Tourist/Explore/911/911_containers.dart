import 'package:flutter/material.dart';

class NineOneOneContainer extends StatelessWidget {
  final String imagePath;
  const NineOneOneContainer({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final double containerSize = MediaQuery.of(context).size.width * 0.15;
    return Container(
      width: containerSize,
      height: containerSize + 10,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
