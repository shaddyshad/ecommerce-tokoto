import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenHeight;
  static double screenWidth;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }


}

// propotionate size
double getPropotionateScreenHeight(double inputHeight){
  double screenHeight = SizeConfig.screenHeight;

  return (inputHeight / 812.0) * screenHeight;
}

//propotionate width
double getPropotionateScreenWidth(double inputWidth){
  return (inputWidth / 375.0) * SizeConfig.screenWidth;
}