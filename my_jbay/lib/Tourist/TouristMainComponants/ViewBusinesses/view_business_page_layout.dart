import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:my_jbay/commanUi/reusable_page_title.dart';
import 'package:my_jbay/constants/myColors.dart';
import 'package:my_jbay/constants/myutility.dart';

class ViewBusinessPageLayout extends StatefulWidget {
  final String title;
  final Widget bodyContent;
  final Function(Widget)? onBackPressed; // Optional callback for back button

  const ViewBusinessPageLayout({
    super.key,
    required this.title,
    required this.bodyContent,
    this.onBackPressed, // Remains optional
  });

  @override
  _ViewBusinessPageLayoutState createState() => _ViewBusinessPageLayoutState();
}

class _ViewBusinessPageLayoutState extends State<ViewBusinessPageLayout> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  final List<String> imageList = [
    'images/scroll_business1.png',
    'images/scroll_business2.png',
    'images/scroll_business1.png',
    'images/scroll_business2.png',
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentPage < imageList.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageHeight = MyUtility(context).height * 0.25;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: imageHeight,
                width: screenWidth,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      itemCount: imageList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imageList[index],
                          fit: BoxFit.cover,
                          width: screenWidth,
                        );
                      },
                    ),
                    Positioned(
                      bottom: 38,
                      child: SmoothPageIndicator(
                        controller: _pageController,
                        count: imageList.length,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Mycolors().yellow,
                          dotColor: Mycolors().lightGrey,
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    color: Mycolors().lightGrey,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(height: 40),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: widget.bodyContent,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: imageHeight - 30,
            left: 20,
            right: 20,
            child: ReusablePageTitle(
              title: widget.title,
              backgroundColor: Mycolors().yellow,
            ),
          ),
          Positioned(
            top: 30,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Mycolors().blue,
                size: 60,
              ),
              onPressed: () {
                if (widget.onBackPressed != null) {
                  // Use the provided callback if it exists
                  widget.onBackPressed!(widget.bodyContent);
                } else {
                  // Default to Navigator.pop if no callback is provided
                  Navigator.pop(context);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
