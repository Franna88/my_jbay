import 'package:flutter/material.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class ReusableViewBusinessContainers extends StatefulWidget {
  final VoidCallback onTap;
  final String imagePath;
  final String title;

  const ReusableViewBusinessContainers({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  _ReusableViewBusinessContainersState createState() =>
      _ReusableViewBusinessContainersState();
}

class _ReusableViewBusinessContainersState
    extends State<ReusableViewBusinessContainers> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Stack(
        children: [
          Container(
            width: MyUtility(context).width * 0.4,
            height: MyUtility(context).width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    widget.imagePath,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 12.0),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.8),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      child: Text(
                        widget.title,
                        textAlign: TextAlign.center,
                        style: MyJbayTextstyle(context)
                            .styleSmallText
                            .copyWith(color: Colors.white, height: 1.2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 8.0,
            right: 8.0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
              child: Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.red : Colors.grey,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
