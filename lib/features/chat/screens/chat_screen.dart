import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match_job/shared/classes/text_style.dart';
import 'package:match_job/shared/extentions/navigations.dart';
import 'package:match_job/shared/resources/color_resources.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leadingWidth: 20.w,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios, size: 17),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            SizedBox(width: 10.w),
            Column(
              spacing: 4.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "محمد احمد",
                  style: AppTextStyle.textStyle(
                    appFontWeight: FontWeight.w400,
                    appFontSize: 14.sp,
                    color: ColorResources.blackColor,
                  ),
                ),
                Text(
                  "متصل",
                  style: AppTextStyle.textStyle(
                    appFontWeight: FontWeight.w400,
                    appFontSize: 12.sp,
                    color: Colors.grey[400],
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
