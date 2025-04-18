import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match_job/shared/classes/text_style.dart';
import 'package:match_job/shared/resources/color_resources.dart';

class CustomRowTitles extends StatelessWidget {
  const CustomRowTitles({super.key, required this.firstTitle, this.onTap});
  final String firstTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstTitle,
          style: AppTextStyle.textStyle(
            appFontSize: 14.sp,
            appFontHeight: 24.5.sp,
            appFontWeight: FontWeight.w700,
            color: ColorResources.blackColor,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            "",
            style: AppTextStyle.textStyle(
              appFontSize: 14.sp,
              appFontHeight: 24.5.sp,
              appFontWeight: FontWeight.w400,
              color: ColorResources.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
