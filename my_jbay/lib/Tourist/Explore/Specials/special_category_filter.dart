import 'package:flutter/material.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';

class SpecialCategoryFilter extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool isSelected;

  const SpecialCategoryFilter({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double containerSize = MediaQuery.of(context).size.width * 0.2;

    return InkWell(
      // onTap: onTap,
      child: Container(
        width: containerSize,
        decoration: BoxDecoration(
          color: isSelected ? Colors.yellow.shade700 : Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          border:
              isSelected ? Border.all(color: Colors.orange, width: 2.0) : null,
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
            mainAxisSize: MainAxisSize
                .min, // Makes the column take up only as much space as needed
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.contain,
                height: containerSize * 0.6, // Adjust image size
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: MyJbayTextstyle(context).styleSmallerText.copyWith(
                      height: 1,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
