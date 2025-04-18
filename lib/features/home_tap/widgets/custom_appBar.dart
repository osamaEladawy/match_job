import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:match_job/shared/classes/text_style.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;

  final String text;
  final bool? active;
  final String image;
  final String activeImage;
  final Color? colorText;

  const CustomButtonAppBar({
    super.key,
    this.onPressed,
    required this.text,
    this.active,
    this.image = "",
    this.colorText,
    required this.activeImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        spacing: 2.h,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (image.isNotEmpty || activeImage.isNotEmpty)
            SvgPicture.asset(
              active == true ? activeImage : image,
              height: 20.h,
              width: 20.w,
              color: colorText,
            ),
          Text(
            text,
            style: AppTextStyle.textStyle(
              appFontSize: 10.sp,
              appFontHeight: 17.5.sp,
              appFontWeight: FontWeight.w700,
              color: colorText,
            ),
          ),
        ],
      ),
    );
  }
}
