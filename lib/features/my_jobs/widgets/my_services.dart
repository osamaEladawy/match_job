import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/classes/text_style.dart';
import '../../../shared/resources/color_resources.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key, required this.title, this.onTap});
  final void Function()? onTap;

  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(
          top: 12.h,
          left: 16.w,
          right: 16.w,
          bottom: 12.h,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffF9F9FA),
          //border: Border.all(color: Color(0xff6C6C6C)),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            Icon(Icons.receipt_long_outlined),
            SizedBox(width: 14.w,),
            Text(
              title,
              style: AppTextStyle.textStyle(
                appFontWeight: FontWeight.w400,
                appFontSize: 14.sp,
                color: ColorResources.blackColor,
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios_rounded,size: 17,),
          ],
        ),
      ),
    );
  }
}
