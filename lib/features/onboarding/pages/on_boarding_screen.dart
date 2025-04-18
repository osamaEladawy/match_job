// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:match_job/core/classes/responsive_screen.dart';
import 'package:match_job/core/functions/translate.dart';
import 'package:match_job/core/routes/routes.dart';
import 'package:match_job/features/onboarding/cubit/onboarding_cubit.dart';
import 'package:match_job/shared/classes/text_style.dart';
import 'package:match_job/shared/extentions/navigations.dart';
import 'package:match_job/shared/resources/color_resources.dart';
import 'package:match_job/shared/resources/icons_resources.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return Scaffold(
      body: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          return PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (val) {
              OnboardingCubit.instance.changeIndex(val);
            },
            itemCount: 4,
            controller: OnboardingCubit.instance.pageController,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child:
                Container(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    top: 54.h,
                    bottom: 17.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    // image: DecorationImage(
                    //   fit: BoxFit.cover,
                    //   image: AssetImage(ImagesResources.splash),
                    // ),
                  ),
                  constraints: BoxConstraints(
                    maxWidth: ResponsiveScreen.width,
                    maxHeight: ResponsiveScreen.height,
                    minHeight: ResponsiveScreen.height,
                    minWidth: ResponsiveScreen.width,
                  ),
                  child: Column(
                    children: [
                      if (OnboardingCubit.instance.currentIndex != 0)
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              SizedBox(),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  OnboardingCubit.instance.back();
                                },
                                child: SvgPicture.asset(
                                  IconsResources.arrowLeft,
                                  color: ColorResources.whiteColor,
                                  height: 24.h,
                                  width: 24.w,
                                ),
                              ),
                            ],
                          ),
                        ),
                      SizedBox(height: 24.h),
                      SmoothPageIndicator(
                        controller: OnboardingCubit.instance.pageController,
                        count: 4,
                        effect: ExpandingDotsEffect(
                          activeDotColor: ColorResources.primaryColor,
                          dotColor: ColorResources.whiteColor,
                          expansionFactor: 1.1,
                          dotWidth: 77.w,
                          dotHeight: 7.h,
                          // strokeWidth: 0.5,
                        ),
                        onDotClicked: (index) {},
                      ),
                      SizedBox(height: 24.h),
                      // if (OnboardingCubit.instance.currentIndex == 3)
                      //   LoginScreen(),//SignUpScreen(),
                      // if (OnboardingCubit.instance.currentIndex != 3)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: " ",
                                  style: AppTextStyle.textStyle(
                                    appFontSize: 22.sp,
                                    appFontHeight: 38.5.sp,
                                    appFontWeight: FontWeight.w700,
                                    color: ColorResources.whiteColor,
                                  ),
                                ),
                                TextSpan(
                                  text: "",
                                  style: AppTextStyle.textStyle(
                                    appFontSize: 22.sp,
                                    appFontHeight: 38.5.sp,
                                    appFontWeight: FontWeight.w700,
                                    color: ColorResources.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '',
                            style: AppTextStyle.textStyle(
                              appFontSize: 14.sp,
                              appFontHeight: 24.5.sp,
                              appFontWeight: FontWeight.w400,
                              color: ColorResources.whiteColor,
                            ),
                          ),
                        ],
                      ),
                      // if (OnboardingCubit.instance.currentIndex != 3)
                      Spacer(),
                      // if (OnboardingCubit.instance.currentIndex != 3)
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 12.h,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.r),
                          color: ColorResources.blackColor.withOpacity(0.20),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 12.h,
                          children: [
                            Row(
                              spacing: 12.w,
                              children: [
                                 
                               
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                context.pushNamed(Routes.signUp);
                              },
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          " ",
                                      style: AppTextStyle.textStyle(
                                        appFontSize: 22.sp,
                                        appFontHeight: 38.5.sp,
                                        appFontWeight: FontWeight.w400,
                                        color: ColorResources.whiteColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "",
                                      style: AppTextStyle.textStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            ColorResources.primaryColor,
                                        appFontSize: 22.sp,
                                        appFontHeight: 38.5.sp,
                                        appFontWeight: FontWeight.w700,
                                        color: ColorResources.primaryColor,
                                      ),
                                    ),
                                    // WidgetSpan(
                                    //   alignment: PlaceholderAlignment.baseline,
                                    //   baseline: TextBaseline.alphabetic,
                                    //   child: Container(
                                    //     width: 60, // عرض الخط
                                    //     height: 2, // سمك الخط
                                    //     color: Colors.red, // لون الخط
                                    //     margin: EdgeInsets.only(
                                    //       top: 8,
                                    //     ), // تعديل المسافة تحت النص
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
