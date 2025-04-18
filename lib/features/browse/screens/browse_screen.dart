import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match_job/core/constant/appStrings.dart';
import 'package:match_job/core/functions/translate.dart';
import 'package:match_job/core/routes/routes.dart';
import 'package:match_job/features/browse/cubit/browse_cubit.dart';
import 'package:match_job/features/browse/domain/models/company_model.dart';
import 'package:match_job/shared/classes/text_style.dart';
import 'package:match_job/shared/extentions/navigations.dart';
import 'package:match_job/shared/resources/color_resources.dart';
import 'package:match_job/shared/resources/image_resources.dart';
import 'package:match_job/shared/widgets/custom_app_bar.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppConstant.heightAppBar.h),
        child: CustomAppBar( isHomeTap: true),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.24.h),
        child: Column(
          children: [
            Container(
              height: 150.w,
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                image: DecorationImage(
                  image: AssetImage(ImagesResources.banner),
                ),
              ),
              child: Container(
                height: 50.h,
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff1D1D1D00),
                      Color(0xff1D1D1D00).withOpacity(0.80),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.r),
                    bottomRight: Radius.circular(8.r),
                  ),
                ),
                child: Text(
                  tr.theBestAppToFindTheRightJob,
                  style: AppTextStyle.textStyle(
                    appFontSize: 14.sp,
                    appFontWeight: FontWeight.w400,
                    color: ColorResources.whiteColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  tr.jobs_that_suit_you,
                  style: AppTextStyle.textStyle(
                    appFontSize: 16.sp,
                    appFontWeight: FontWeight.w400,
                    color: ColorResources.blackColor,
                  ),
                ),
                Text(
                  tr.everyone,
                  style: AppTextStyle.textStyle(
                    appFontSize: 14.sp,
                    appFontWeight: FontWeight.w400,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            BlocBuilder<BrowseCubit, BrowseState>(
              builder: (context, state) {
                return Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      List<CompanyModel> companies =
                          BrowseCubit.instance.companies;
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 10.h,
                        ),
                        constraints: BoxConstraints(
                          maxWidth: double.infinity,
                          minWidth: double.infinity,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
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
                                        color: ColorResources.blackColor
                                            .withOpacity(0.08),
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
                                      companies[index].nameCompany,
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
                                          companies[index].averageRate
                                              .toString(),
                                          style: AppTextStyle.textStyle(
                                            appFontSize: 14.sp,
                                            appFontWeight: FontWeight.w400,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.favorite_outline),
                                    SizedBox(),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Divider(
                              color: ColorResources.blackColor.withOpacity(
                                0.08,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      companies[index].addressCompany,
                                      style: AppTextStyle.textStyle(
                                        appFontSize: 12.sp,
                                        appFontWeight: FontWeight.w400,
                                        color: ColorResources.blackColor,
                                      ),
                                    ),
                                    Row(
                                      spacing: 8.w,
                                      children: [
                                        Text(
                                          "${companies[index].theGreatSalary}\$",

                                          style: AppTextStyle.textStyle(
                                            appFontSize: 12.sp,
                                            appFontWeight: FontWeight.w400,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ),
                                        Text(
                                          "${companies[index].theLessSalary}\$",
                                          style: AppTextStyle.textStyle(
                                            appFontSize: 12.sp,
                                            appFontWeight: FontWeight.w400,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    context.pushNamed(Routes.jobApplyingScreen,arguments: companies[index]);
                                  },
                                  child: Container(
                                    height: 32.h,
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.w,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6.r),
                                      border: Border.all(
                                        color: Theme.of(context).primaryColor,
                                        width: 1.w,
                                      ),
                                    ),
                                    child: Text(
                                      tr.the_details,
                                      style: AppTextStyle.textStyle(
                                        color: Theme.of(context).primaryColor,
                                        appFontSize: 16.sp,
                                        appFontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 8.h),
                    itemCount: BrowseCubit.instance.companies.length,
                  ),
                );
              },
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
