import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../classes/text_style.dart';
import '../resources/color_resources.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, this.title = '', this.onTap, this.style});

  final String title;
  final void Function()? onTap;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      minWidth: double.infinity,
      color: Theme.of(context).primaryColor,
      onPressed: onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: AppTextStyle.textStyle(
          appFontSize: 16.sp,
          appFontHeight: 28.sp,
          appFontWeight: FontWeight.w400,
          color: ColorResources.whiteColor,
        ),
      ),
    );
  }
}
