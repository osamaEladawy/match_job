import 'package:flutter/material.dart';
import 'package:match_job/app/my_app.dart';


void snackBar(content) {
  ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
    SnackBar(
      content: Text(content),
      //backgroundColor: AppColors.blueGrey,
    ),
  );
}
