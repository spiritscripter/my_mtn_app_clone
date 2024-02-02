import 'package:flutter/material.dart'
    show
        BuildContext,
        BouncingScrollPhysics,
        NeverScrollableScrollPhysics,
        CrossAxisAlignment,
        MainAxisAlignment,
        MainAxisSize,
        MediaQuery,
        Size,
        Orientation;

//Must be called on Initialization
class ScreenSize {
  static late Size _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  // static late double defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.sizeOf(context);
    screenWidth = _mediaQueryData.width;
    screenHeight = _mediaQueryData.height;
    orientation = MediaQuery.orientationOf(context);
  }
}

extension SizeExtension on num {
  double get h {
    double screenHeight = ScreenSize.screenHeight;
    // 812 is the layout height the designer used

    // shortestSide helps determine the type of device
    // if less than 600, then it is a phone
    if (ScreenSize._mediaQueryData.shortestSide < 600) {
      if (ScreenSize.orientation == Orientation.portrait) {
        return (this / 812.0) * screenHeight;
      } else {
        return (this / 375.0) * screenHeight;
      }
    }

    return (this / 812.0) * screenHeight;
  }

  double get w {
    double screenWidth = ScreenSize.screenWidth;
    // 375 is the layout width that designer use

    // shortestSide helps determine the type of device
    // if less than 600, then it is a phone
    if (ScreenSize._mediaQueryData.shortestSide < 600) {
      if (ScreenSize.orientation == Orientation.portrait) {
        return (this / 375.0) * screenWidth;
      } else {
        return (this / 812.0) * screenWidth;
      }
    }

    return (this / 375.0) * screenWidth;
  }

  num get text => ScreenSize.screenWidth * (this / 100);
}

// Column and Row alignmnet usables
MainAxisAlignment mainStart = MainAxisAlignment.start;
MainAxisAlignment mainCenter = MainAxisAlignment.center;
MainAxisAlignment mainEnd = MainAxisAlignment.end;
MainAxisAlignment mainSpaceBetween = MainAxisAlignment.spaceBetween;
MainAxisAlignment mainSpaceEvenly = MainAxisAlignment.spaceEvenly;
MainAxisAlignment mainSpaceAround = MainAxisAlignment.spaceAround;

CrossAxisAlignment crossStart = CrossAxisAlignment.start;
CrossAxisAlignment crossCenter = CrossAxisAlignment.center;
CrossAxisAlignment crossEnd = CrossAxisAlignment.end;
CrossAxisAlignment crossStretch = CrossAxisAlignment.stretch;

MainAxisSize mainMax = MainAxisSize.max;
MainAxisSize mainMin = MainAxisSize.min;

// Scroll
BouncingScrollPhysics bouncingScrollPhysics = const BouncingScrollPhysics();
NeverScrollableScrollPhysics neverScrollableScrollPhysics =
    const NeverScrollableScrollPhysics();
