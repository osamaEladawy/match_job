import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:match_job/core/routes/routes.dart';
import 'package:match_job/shared/classes/text_style.dart';
import 'package:match_job/shared/extentions/navigations.dart';
import 'package:match_job/shared/resources/color_resources.dart';
import 'package:match_job/shared/resources/icons_resources.dart';
import 'package:match_job/shared/resources/image_resources.dart';
import 'package:match_job/shared/widgets/primary_button.dart';

import '../../../core/functions/translate.dart';
import '../../../shared/widgets/custom_app_bar.dart';
import '../widgets/custom_card_select_info.dart';

class CompleteInfoScreen extends StatelessWidget {
  const CompleteInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: CustomAppBar(title: tr.Complete_the_data),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipOval(child: Image.asset(ImagesResources.defaultProfile)),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      child: SvgPicture.asset(IconsResources.edit),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              CustomCardSelectInfo(title: tr.personal_information),
              SizedBox(height: 16.h),
              CustomCardSelectInfo(title: tr.profession),
              SizedBox(height: 16.h),
              CustomCardSelectInfo(title: tr.education),
              SizedBox(height: 16.h),
              CustomCardSelectInfo(title: tr.previous_experience),
              SizedBox(height: 16.h),
              CustomCardSelectInfo(title: tr.skills),
              SizedBox(height: 16.h),
              CustomCardSelectInfo(title: tr.projects),
              SizedBox(height: 16.h),
              CustomCardSelectInfo(title: tr.cards),
              SizedBox(height: 120.h),
            ],
          ),
        ),
      ),
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            height: 110.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: ColorResources.whiteColor,
              border: Border(
                top: BorderSide(
                  color: ColorResources.blackColor.withOpacity(0.08),
                ),
              ),
            ),
            child: Row(
              spacing: 10.w,
              children: [
                Expanded(
                  child: PrimaryButton(
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
                                  tr.data_saved_successfully,
                                  style: AppTextStyle.textStyle(
                                    appFontSize: 18.sp,
                                    color: ColorResources.blackColor,
                                    appFontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                PrimaryButton(
                                  onTap: () {
                                    context.pushNamedAndRemoveUntil(
                                      Routes.homeTap,
                                    );
                                  },
                                  title: tr.go_to_home,
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    title: tr.save_and_follow,
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(134.h, 50.h),
                    side: BorderSide(color: Theme.of(context).primaryColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    tr.skip,
                    style: AppTextStyle.textStyle(
                      appFontSize: 16.sp,
                      appFontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
