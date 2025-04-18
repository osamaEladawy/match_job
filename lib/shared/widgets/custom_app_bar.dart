import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:match_job/core/functions/check_for_current_language.dart';
import 'package:match_job/shared/extentions/navigations.dart';
import 'package:match_job/shared/resources/icons_resources.dart';
import 'package:match_job/shared/resources/image_resources.dart';

import '../classes/text_style.dart';
import '../resources/color_resources.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.title = '',
    this.isHomeTap = false,
    this.userName = 'اسامه العدوي',
    this.jobTitle = 'المسمي الوظيفي',
    this.singleTitle = "",
    this.isNotArrow = false,
  });

  final String title;
  final String userName;
  final String jobTitle;
  final bool isHomeTap;
  final bool isNotArrow;
  final String singleTitle;

  @override
  Widget build(BuildContext context) {
    return singleTitle.isNotEmpty
        ? AppBar(
          leading:isNotArrow?null: IconButton(
            onPressed: () async {
              context.mayBePop();
            },
            icon: Icon(Icons.arrow_back_ios, size: 18),
          ),
          centerTitle: true,
          title: Text(
            singleTitle,
            style: AppTextStyle.textStyle(
              appFontSize: 16.sp,
              appFontWeight: FontWeight.w400,
              color: ColorResources.blackColor,
            ),
          ),
        )
        : AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          toolbarHeight: isHomeTap ? 100.h : 70.h,
          centerTitle: isHomeTap ? false : true,
          leading:
              isHomeTap
                  ? null
                  : IconButton(
                    onPressed: () {
                      context.mayBePop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: ColorResources.whiteColor,
                    ),
                  ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.r),
              bottomRight: Radius.circular(12.r),
            ),
          ),
          title:
              isHomeTap
                  ? Row(
                    spacing: 10.w,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          ImagesResources.picHome,
                          height: 45.h,
                          width: 45.w,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 2.h,
                        children: [
                          Text(
                            userName,
                            style: AppTextStyle.textStyle(
                              appFontSize: 14.sp,
                              appFontWeight: FontWeight.w400,
                              color: ColorResources.whiteColor,
                            ),
                          ),
                          Text(
                            jobTitle,
                            style: AppTextStyle.textStyle(
                              appFontSize: 12.sp,
                              appFontWeight: FontWeight.w400,
                              color: ColorResources.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                  : Text(
                    title,
                    style: AppTextStyle.textStyle(
                      appFontSize: 16.sp,
                      appFontWeight: FontWeight.w400,
                      color: ColorResources.whiteColor,
                    ),
                  ),
          actions: [
            if (isHomeTap)
              Padding(
                padding:
                    isArabic
                        ? EdgeInsets.only(left: 20.w)
                        : EdgeInsets.only(right: 20.w),
                child: Row(
                  spacing: 12.w,
                  children: [
                    GestureDetector(
                      child: SvgPicture.asset(
                        IconsResources.heart,
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                    GestureDetector(
                      child: SvgPicture.asset(
                        IconsResources.notification,
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        );
  }
}
