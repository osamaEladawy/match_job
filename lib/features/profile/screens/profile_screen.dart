import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:match_job/core/functions/translate.dart';
import 'package:match_job/core/routes/routes.dart';
import 'package:match_job/features/my_jobs/widgets/my_services.dart';
import 'package:match_job/shared/classes/text_style.dart';
import 'package:match_job/shared/extentions/navigations.dart';
import 'package:match_job/shared/resources/color_resources.dart';

import '../../../core/constant/appStrings.dart';
import '../../../shared/widgets/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppConstant.heightAppBar.h),
        child: CustomAppBar(isHomeTap: true),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  tr.are_you_looking_for_a_job,
                  style: AppTextStyle.textStyle(
                    appFontSize: 16.sp,
                    appFontWeight: FontWeight.w400,
                    color: ColorResources.blackColor,
                  ),
                ),
                //Switch(value: false, onChanged: (value){}),
                FlutterSwitch(
                  width: 65,
                  valueFontSize: 25.0,
                  //toggleSize: 45.0,
                  value: false,
                  borderRadius: 30.0,
                  //padding: 8.0,
                  //showOnOff: true,
                  onToggle: (val) {
                    // status = val;
                  },
                ),
              ],
            ),
            SizedBox(height: 20.h),
            MyServices(title: tr.edit_account,onTap: (){
              context.pushNamed(Routes.editProfile);
            },),
            SizedBox(height: 10.h),
            MyServices(title: tr.my_interviews),
            SizedBox(height: 10.h),
            MyServices(title: tr.contact_us),
            SizedBox(height: 10.h),
            MyServices(title: tr.termsOfUse),
            SizedBox(height: 10.h),
            MyServices(title: tr.send_an_invitation_to_a_friend),
            SizedBox(height: 10.h),
            MyServices(title: tr.technical_support),
            SizedBox(height: 10.h),
            MyServices(title: tr.log_out),
            SizedBox(height: 24.h),
            Row(mainAxisSize: MainAxisSize.min, children: [
              Text(tr.delete_account),
            ]),
          ],
        ),
      ),
    );
  }
}
