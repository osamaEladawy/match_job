import 'package:flutter/material.dart';
import 'package:match_job/app/my_app.dart';

class ResponsiveScreen {
  static late double height;
  static late double width;

  static void initialize() {
    height = MediaQuery.of(navigatorKey.currentContext!).size.height;
    width = MediaQuery.of(navigatorKey.currentContext!).size.width;
  }
}
