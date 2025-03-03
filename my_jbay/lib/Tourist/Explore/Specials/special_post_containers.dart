import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class SpecialPostContainers extends StatefulWidget {
  final String specialTitle;
  final String location;
  final String dateTime;
  final String imageUrl;

  const SpecialPostContainers({
    super.key,
    required this.specialTitle,
    required this.location,
    required this.dateTime,
    required this.imageUrl,
  });

  @override
  _SpecialPostContainersState createState() => _SpecialPostContainersState();
}

class _SpecialPostContainersState extends State<SpecialPostContainers> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MyUtility(context).width * 0.9,
          constraints: BoxConstraints(
            minHeight:
                MyUtility(context).height * 0.4, // Ensures minimum height
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  color: Mycolors().blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    widget.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: MyUtility(context).width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize:
                        MainAxisSize.min, // Allows container to expand
                    children: [
                      Row(
                        children: [
                          Text("${widget.location} | ${widget.dateTime}",
                              style: MyJbayTextstyle(context).smallGreyText),
                          const SizedBox(width: 6),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        widget.specialTitle,
                        style: MyJbayTextstyle(context).blacksStyleSubheader,
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 12.0,
          right: 15.0,
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
    );
  }
}
