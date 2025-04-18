import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/classes/text_style.dart';
import '../../../shared/resources/color_resources.dart';

class CustomCardSelectInfo extends StatelessWidget {
  const CustomCardSelectInfo({super.key, required this.title, this.onTap});

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: double.infinity,
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Color(0xffF1F1F1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyle.textStyle(
            appFontSize: 16.sp,
            appFontWeight: FontWeight.w400,
            color: ColorResources.blackColor,
          ),
        ),
      ),
    );
  }
}
