import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match_job/core/functions/translate.dart';
import 'package:match_job/shared/classes/text_style.dart';
import 'package:match_job/shared/widgets/textformfield.dart';

import '../../../shared/resources/color_resources.dart';
import '../../../shared/resources/image_resources.dart';
import '../../../shared/widgets/custom_app_bar.dart';
import '../../../shared/widgets/primary_button.dart';

class VerifyYourCertificateScreen extends StatelessWidget {
  const VerifyYourCertificateScreen({super.key, this.nameScreen = ''});

  final String nameScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(singleTitle: nameScreen),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tr.verify_your_certificate, style: AppTextStyle.textStyle()),
            CustomTextFormField(
              hintText: tr.upload_a_file_or_image,
              suffixIcon: Icons.upload_file,
              suffixIconOnTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomSheet(
        enableDrag: false,
        showDragHandle: false,
        backgroundColor: ColorResources.whiteColor,
        shadowColor: ColorResources.blackColor.withOpacity(0.08),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.r),
            topRight: Radius.circular(12.r),
          ),
        ),
        onClosing: () {},
        builder:
            (context) => Container(
          height: 84.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: ColorResources.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              topRight: Radius.circular(12.r),
            ),
            boxShadow: [
              BoxShadow(
                color: ColorResources.blackColor.withOpacity(0.08),
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: PrimaryButton(
            title: tr.confirm,
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 242.h,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      top: 20.h,
                      left: 10.w,
                      right: 10.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r),
                      ),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          ImagesResources.check,
                          height: 114.h,
                          width: 114.w,
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          tr.the_job_application_has_been_successfully_submitted,
                          style: AppTextStyle.textStyle(
                            appFontSize: 18.sp,
                            color: ColorResources.blackColor,
                            appFontWeight: FontWeight.w400,
                          ),
                        ), Text(
                          tr.the_job_application_has_been_successfully_submitted,
                          style: AppTextStyle.textStyle(
                            appFontSize: 14.sp,
                            color: ColorResources.blackColor.withOpacity(0.60),
                            appFontWeight: FontWeight.w400,
                          ),
                        ),
                        // SizedBox(height: 20.h),
                        // PrimaryButton(
                        //   onTap: () {
                        //     context.pushNamedAndRemoveUntil(Routes.homeTap);
                        //   },
                        //   title: tr.i_go_to_jobs,
                        // ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),

    );
  }
}
