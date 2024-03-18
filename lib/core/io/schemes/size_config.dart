import 'dart:math';

import 'package:flutter/widgets.dart';

/// @author Paul Okeke

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  static late double textMultiplier;
  static late double imageSizeMultiplier;
  static late double heightMultiplier;
  static late double widthMultiplier;

  void init(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    textMultiplier = blockSizeVertical;
    imageSizeMultiplier = blockSizeHorizontal;
    heightMultiplier = blockSizeVertical;
    widthMultiplier = blockSizeHorizontal;
  }

  static double pxToWidth(double widthPx) {
    return widthPx * 1;
  }

  static double pxToHeight(double heightPx) {
    return heightPx * 1; //blockSizeVertical;
  }

  static double radius(double radius) {
    return radius * min(1, 1);
  }

  static double pxToTextSize(double sizePx) {
    return sizePx * 1;
  }
}

extension PxToLineHeight on double {
  double toLineHeight(double fontSize) {
    return SizeConfig.pxToTextSize(this) / SizeConfig.pxToTextSize(fontSize);
  }
}
