import 'package:flutter/material.dart';

class Responsive {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double widthPercentage(BuildContext context, double percentage) {
    return screenWidth(context) * percentage;
  }

  static double heightPercentage(BuildContext context, double percentage) {
    return screenHeight(context) * percentage;
  }

  static EdgeInsets paddingPercentage(BuildContext context, double percentage) {
    double paddingValue = screenWidth(context) * percentage;
    return EdgeInsets.all(paddingValue);
  }
}
