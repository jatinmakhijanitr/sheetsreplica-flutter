import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:sheetsreplica/home/home.dart';
import 'package:sheetsreplica/onboarding/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<SliderM> slides = new List<SliderM>();
  int currentIndex = 0;
  Color currentcolor = Colors.green;
  PageController pageController = new PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    slides = getSlides();
  }

  Widget pageIndexDisplay(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.all(2),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
          color: isCurrentPage ? Colors.white : Colors.grey[300],
          borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: slides.length,
        onPageChanged: (val) {
          setState(() {
            currentIndex = val;
          });
        },
        itemBuilder: (context, index) {
          currentcolor = slides[index].getColorValue();
          return Slider(
            imageAssetPath: slides[index].getImageAssetPath(),
            title: slides[index].getTitle(),
            desc: slides[index].getDesc(),
            colorval: slides[index].getColorValue(),
          );
        },
      ),
      bottomSheet: currentIndex != slides.length - 1
          ? Container(
              color: currentcolor,
              height: Platform.isIOS ? 70 : 60,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      pageController.animateToPage(slides.length - 1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    },
                    child: Text("SKIP"),
                  ),
                  Row(
                    children: [
                      for (int i = 0; i < slides.length; i++)
                        currentIndex == i
                            ? pageIndexDisplay(true)
                            : pageIndexDisplay(false)
                    ],
                  ),
                  GestureDetector(
                      onTap: () {
                        pageController.animateToPage(currentIndex + 1,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear);
                      },
                      child: Icon(Icons.navigate_next)),
                ],
              ),
            )
          : Container(
              color: currentcolor,
              height: Platform.isIOS ? 70 : 60,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Text("DONE"),
                  ),
                ],
              ),
            ),
    );
  }
}

class Slider extends StatelessWidget {
  String imageAssetPath, title, desc;
  Color colorval;
  Slider({this.imageAssetPath, this.title, this.desc, this.colorval});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorval,
      child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Image.asset(
            imageAssetPath,
            height: 300,
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            alignment: Alignment.centerLeft,
            child: Text(title, style: TextStyle(fontSize: 25)),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            alignment: Alignment.centerLeft,
            child: Text(desc),
          ),
        ],
      ),
    );
  }
}
