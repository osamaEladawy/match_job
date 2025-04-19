import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/appStrings.dart';
import '../../../core/functions/translate.dart';
import '../../../shared/widgets/custom_app_bar.dart';
import '../../my_jobs/widgets/my_services.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppConstant.heightAppBar.h),
        child: CustomAppBar(singleTitle:"dd" ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            MyServices(title: tr.edit_account),
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
