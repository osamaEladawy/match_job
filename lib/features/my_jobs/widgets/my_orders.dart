import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/functions/translate.dart';
import '../../../shared/classes/text_style.dart';
import '../../../shared/resources/color_resources.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({
    super.key,
    required this.date,
    required this.time,
    required this.typeProcess,
    this.isComplete ='',
  });

  final String date;
  final String time;
  final String typeProcess;
  final String isComplete;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.h, left: 8.w, right: 8.w, bottom: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(width: 1.w, color: Color(0xffECECEC)),
      ),
      child: Column(
        spacing: 12.h,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.date_range, size: 17),
                  Text(
                    "${tr.the_date}: 12/12/2024",
                    style: AppTextStyle.textStyle(
                      appFontSize: 10.sp,
                      appFontWeight: FontWeight.w400,
                      color: Color(0xff626262),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.date_range, size: 17),
                  Text(
                    "${tr.theTime}: 12/12/2024",
                    style: AppTextStyle.textStyle(
                      appFontSize: 10.sp,
                      appFontWeight: FontWeight.w400,
                      color: Color(0xff626262),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color:isComplete==tr.completed? Color(0xff009011):Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  isComplete,
                  style: AppTextStyle.textStyle(
                    appFontSize: 10.sp,
                    appFontWeight: FontWeight.w400,
                    color: ColorResources.whiteColor,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tr.verify_your_certificate,
                style: AppTextStyle.textStyle(
                  appFontSize: 12.sp,
                  appFontWeight: FontWeight.w400,
                  color: ColorResources.blackColor.withOpacity(0.80),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Color(0xffE8ECF0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      tr.view_details,
                      style: AppTextStyle.textStyle(
                        appFontSize: 10.sp,
                        appFontWeight: FontWeight.w300,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined,size: 17,)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
