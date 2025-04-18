import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match_job/shared/classes/text_style.dart';

class DisplayInfoJob extends StatelessWidget {
  const DisplayInfoJob({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Color(0xffE3E3E3),
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: AppTextStyle.textStyle(
          appFontSize: 13.sp,
          appFontWeight: FontWeight.w300,
          color: Color(0xff474454),
        ),
      ),
    );
  }
}
