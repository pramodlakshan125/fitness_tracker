import 'package:flutter/material.dart';

class Responsive {
  //method to  check if the device is mobile
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 850;
  }

  //method to check if the device is tablet
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 850 &&
        MediaQuery.of(context).size.width < 1100;
  }

  //method to check if the device is desktop
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1100;
  }
}
