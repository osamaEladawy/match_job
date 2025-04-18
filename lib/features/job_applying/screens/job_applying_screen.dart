import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match_job/core/classes/responsive_screen.dart';
import 'package:match_job/core/functions/translate.dart';
import 'package:match_job/core/routes/routes.dart';
import 'package:match_job/features/browse/domain/models/company_model.dart';
import 'package:match_job/features/job_applying/widgets/customText.dart';
import 'package:match_job/features/job_applying/widgets/display_info_job.dart';
import 'package:match_job/shared/classes/text_style.dart';
import 'package:match_job/shared/extentions/navigations.dart';
import 'package:match_job/shared/resources/color_resources.dart';
import 'package:match_job/shared/resources/image_resources.dart';
import 'package:match_job/shared/widgets/primary_button.dart';

import '../../../shared/widgets/custom_app_bar.dart';

class JobApplyingScreen extends StatelessWidget {
  const JobApplyingScreen({super.key, required this.companyModel});
  final CompanyModel companyModel;

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(singleTitle: tr.job_details),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Color(0xffF9F9F9),
                border: Border.all(
                  color: ColorResources.blackColor.withOpacity(0.08),
                  width: 1.w,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6.r),
                        child: Container(
                          height: 42.h,
                          width: 42.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorResources.blackColor.withOpacity(
                                0.08,
                              ),
                              width: 1.w,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            companyModel.nameCompany,
                            style: AppTextStyle.textStyle(
                              appFontSize: 14.sp,
                              appFontWeight: FontWeight.w400,
                              color: ColorResources.blackColor,
                            ),
                          ),
                          Row(
                            spacing: 8.w,
                            children: [
                              Row(
                                children: [
                                  ...List.generate(5, (index) {
                                    return Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 17,
                                    );
                                  }),
                                ],
                              ),
                              Text(
                                companyModel.averageRate.toString(),
                                style: AppTextStyle.textStyle(
                                  appFontSize: 14.sp,
                                  appFontWeight: FontWeight.w400,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Icon(Icons.favorite_outline), SizedBox()],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Divider(color: ColorResources.blackColor.withOpacity(0.08)),
                  SizedBox(height: 10.h),
                  Row(
                    spacing: 7.w,
                    children: [
                      DisplayInfoJob(title: 'من المقر'),
                      DisplayInfoJob(title: 'القاهرة - مصر'),
                      DisplayInfoJob(title: 'منذ 10 ايام'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            Container(
              constraints: BoxConstraints(
                maxWidth: double.infinity,
                minWidth: double.infinity,
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: ColorResources.whiteColor,
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: Color(0xffF3F3F3), width: 1.w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr.job_Information,
                    style: AppTextStyle.textStyle(
                      color: ColorResources.blackColor,
                      appFontSize: 15.sp,
                      appFontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text.rich(
                    style: AppTextStyle.textStyle(
                      color: Color(0xff514B6B),
                      appFontSize: 13.sp,
                      appFontWeight: FontWeight.w300,
                    ),
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "${tr.job}:",
                          // style: AppTextStyle.textStyle(
                          //   color: ColorResources.blackColor,
                          //   appFontSize: 15.sp,
                          //   appFontWeight: FontWeight.w400,
                          // ),
                        ),
                        TextSpan(
                          text: " رئيس طباخ",
                          // style: AppTextStyle.textStyle(
                          //   color: ColorResources.blackColor,
                          //   appFontSize: 15.sp,
                          //   appFontWeight: FontWeight.w400,
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text.rich(
                    style: AppTextStyle.textStyle(
                      color: Color(0xff514B6B),
                      appFontSize: 13.sp,
                      appFontWeight: FontWeight.w300,
                    ),
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "${tr.qualification}:",
                          // style: AppTextStyle.textStyle(
                          //   color: ColorResources.blackColor,
                          //   appFontSize: 15.sp,
                          //   appFontWeight: FontWeight.w400,
                          // ),
                        ),
                        TextSpan(
                          text: " شهادة جامعية",
                          // style: AppTextStyle.textStyle(
                          //   color: ColorResources.blackColor,
                          //   appFontSize: 15.sp,
                          //   appFontWeight: FontWeight.w400,
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text.rich(
                    style: AppTextStyle.textStyle(
                      color: Color(0xff514B6B),
                      appFontSize: 13.sp,
                      appFontWeight: FontWeight.w300,
                    ),
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "${tr.experiences}: ",
                          // style: AppTextStyle.textStyle(
                          //   color: ColorResources.blackColor,
                          //   appFontSize: 15.sp,
                          //   appFontWeight: FontWeight.w400,
                          // ),
                        ),
                        TextSpan(
                          text: " 3 سنوات ",
                          // style: AppTextStyle.textStyle(
                          //   color: ColorResources.blackColor,
                          //   appFontSize: 15.sp,
                          //   appFontWeight: FontWeight.w400,
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text.rich(
                    style: AppTextStyle.textStyle(
                      color: Color(0xff514B6B),
                      appFontSize: 13.sp,
                      appFontWeight: FontWeight.w300,
                    ),
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "${tr.nature_of_work}: ",
                          // style: AppTextStyle.textStyle(
                          //   color: ColorResources.blackColor,
                          //   appFontSize: 15.sp,
                          //   appFontWeight: FontWeight.w400,
                          // ),
                        ),
                        TextSpan(
                          text: " دوام كامل ",
                          // style: AppTextStyle.textStyle(
                          //   color: Color(0xff514B6B),
                          //   appFontSize: 13.sp,
                          //   appFontWeight: FontWeight.w300,
                          // ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            Container(
              constraints: BoxConstraints(
                maxWidth: double.infinity,
                minWidth: double.infinity,
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: ColorResources.whiteColor,
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: Color(0xffF3F3F3), width: 1.w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr.additional_features,
                    style: AppTextStyle.textStyle(
                      color: ColorResources.blackColor,
                      appFontSize: 15.sp,
                      appFontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ...List.generate(additionalFeatures.length, (index) {
                    return CustomText(title: additionalFeatures[index]);
                  }),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            Container(
              constraints: BoxConstraints(
                maxWidth: double.infinity,
                minWidth: double.infinity,
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: ColorResources.whiteColor,
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: Color(0xffF3F3F3), width: 1.w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr.job_requirements,
                    style: AppTextStyle.textStyle(
                      color: ColorResources.blackColor,
                      appFontSize: 15.sp,
                      appFontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ...List.generate(3, (index) {
                    return Row(
                      spacing: 10.w,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box_outline_blank, size: 17),
                        Flexible(
                          child: Text(
                            "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: AppTextStyle.textStyle(
                              appFontSize: 13.sp,
                              appFontWeight: FontWeight.w300,
                              color: Color(0xff514B6B),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomSheet(
        enableDrag: false,
        showDragHandle: false,
        backgroundColor: ColorResources.whiteColor,
        //elevation: 10,
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
                title: tr.apply_now,
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 296.h,
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
                            ),
                            SizedBox(height: 20.h),
                            PrimaryButton(
                              onTap: () {
                                context.pushNamedAndRemoveUntil(Routes.homeTap);
                              },
                              title: tr.i_go_to_jobs,
                            ),
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

List<String> additionalFeatures = [
  "تامين طبي",
  "شهادات خبرة",
  "زيادات",
  "يومان اجازة",
  "سكن للمغتربين",
];
