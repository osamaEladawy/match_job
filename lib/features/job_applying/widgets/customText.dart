import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match_job/shared/classes/text_style.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      "•  $title",
      style: AppTextStyle.textStyle(
        appFontSize: 13.sp,
        appFontWeight: FontWeight.w300,
        color: Color(0xff514B6B),
      ),
    );
  }
}
