import 'package:flutter/material.dart';

class SliderM {
  String imagePath;
  String title;
  String desc;
  Color colorval;

  SliderM({this.imagePath, this.title, this.desc, this.colorval});

  void setImagePath(String getImagePath) {
    imagePath = getImagePath;
  }

  void setColor(Color getColor) {
    colorval = getColor;
  }

  void setTitlePath(String getTitlePath) {
    title = getTitlePath;
  }

  void setDescPath(String getDescPath) {
    desc = getDescPath;
  }

  String getImageAssetPath() {
    return imagePath;
  }

  Color getColorValue() {
    return colorval;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderM> getSlides() {
  List<SliderM> slides = new List<SliderM>();
  SliderM slider = new SliderM();

  // On Boarding Screen One
  slider.setImagePath("assets/images/onboarding/1.png");
  slider.setTitlePath("Spreadsheets on the go");
  slider.setDescPath("Get stuff done with or without an Internet Connection");
  slider.setColor(Colors.green);

  slides.add(slider);
  slider = new SliderM();

  // On Boarding Screen Two
  slider.setImagePath("assets/images/onboarding/2.png");
  slider.setTitlePath("Share and edit together");
  slider.setDescPath("Write on your own or invite more people to contribute");
  slider.setColor(Colors.amber);

  slides.add(slider);
  slider = new SliderM();

  // On Boarding Screen Three
  slider.setImagePath("assets/images/onboarding/3.png");
  slider.setTitlePath("Automatically save to the web");
  slider.setDescPath(
      "Never lose your progress, so you can keep working from any computer or device.");
  slider.setColor(Colors.lightBlue);

  slides.add(slider);
  slider = new SliderM();

  // On Boarding Screen Four
  slider.setImagePath("assets/images/onboarding/4.png");
  slider.setTitlePath("Edit Excel spreadsheets");
  slider.setDescPath("Open, edit and save Excel files, all within Sheets");
  slider.setColor(Colors.blue);

  slides.add(slider);
  return slides;
}
