import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:match_job/shared/classes/text_style.dart';
import 'package:match_job/shared/resources/color_resources.dart';
import 'package:match_job/shared/resources/icons_resources.dart';

class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch({
    super.key,
    this.controller,
    required this.hintText,
  });
  final TextEditingController? controller;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: SizedBox(
        width: 350.w,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: SvgPicture.asset(
                IconsResources.search,
                height: 24,
                width: 24.w,
              ),
            ),
            hintStyle: AppTextStyle.textStyle(
              appFontSize: 16.sp,
              appFontHeight: 24.sp,
              appFontWeight: FontWeight.w400,
              color: Color(0xff959595),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.r),
              borderSide: BorderSide(color: ColorResources.whiteColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.r),
              borderSide: BorderSide(color: ColorResources.whiteColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.r),
              borderSide: BorderSide(color: ColorResources.whiteColor),
            ),
            fillColor: ColorResources.whiteColor,
            filled: true,
          ),
        ),
      ),
    );
  }
}
