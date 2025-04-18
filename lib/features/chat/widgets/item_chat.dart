import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/classes/text_style.dart';
import '../../../shared/resources/color_resources.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.isSender,
    required this.isSeen, this.onTap,
  });

  final String name;
  final String message;
  final String time;
  final bool isSender;
  final bool isSeen;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.24.w,
                vertical: 12.24.h,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xff292929),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person, color: Colors.white),
            ),
            //CircleAvatar(radius: 30.r, child: ),
            SizedBox(width: 8.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextStyle.textStyle(
                      appFontSize: 14.sp,
                      appFontWeight: FontWeight.bold,
                      color: ColorResources.blackColor,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    spacing: 6.w,
                    children: [
                      isSender
                          ? Icon(
                            isSeen ? Icons.done_all : Icons.done,
                            size: 16,
                            color: isSeen ? Colors.blue : Colors.grey,
                          )
                          : Icon(Icons.info, size: 16, color: Colors.grey),
                      Text(message, style: TextStyle(color: Colors.grey[700])),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: AppTextStyle.textStyle(
                    appFontSize: 12.sp,
                    appFontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  height: 20.h,width: 20.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                   // shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Text(
                    '1',
                    style: AppTextStyle.textStyle(
                      appFontSize: 10.sp,
                      appFontWeight: FontWeight.w400,
                      color: Color(0xffF8F8F8),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
