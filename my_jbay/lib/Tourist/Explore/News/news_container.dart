import 'package:flutter/material.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/my_jbay_textstyle.dart';
import 'package:my_jbay/constants/myutility.dart';

class NewsContainer extends StatelessWidget {
  final String newsTitle;
  final String author;
  final String postContent;

  const NewsContainer({
    Key? key,
    required this.newsTitle,
    required this.author,
    required this.postContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MyUtility(context).width * 0.9,
      constraints: BoxConstraints(
        minHeight: MyUtility(context).height * 0.4, // Ensures minimum height
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            width: MyUtility(context).width * 0.9,
            child: Image.asset(
              'images/wave_background.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MyUtility(context).width * 0.9,
            decoration: BoxDecoration(
              color: Mycolors().blue,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min, // Allows container to expand
                children: [
                  Text(newsTitle,
                      style: MyJbayTextstyle(context).styleSmallText),
                  const SizedBox(height: 6),
                  Text(
                    'by $author',
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MyUtility(context).width * 0.8,
                      constraints: BoxConstraints(
                        minHeight: MyUtility(context).height * 0.1,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(postContent),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
