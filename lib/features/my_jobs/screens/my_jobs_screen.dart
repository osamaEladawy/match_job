import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match_job/core/constant/appStrings.dart';
import 'package:match_job/core/functions/translate.dart';
import 'package:match_job/features/my_jobs/cubit/my_jobs_cubit.dart';
import 'package:match_job/shared/classes/text_style.dart';
import 'package:match_job/shared/resources/color_resources.dart';
import 'package:match_job/shared/widgets/custom_app_bar.dart';

import '../domain/models/job_model.dart';

class MyJobsScreen extends StatelessWidget {
final  List<String> words = [
    tr.under_processing,
    tr.it_was_presented,
    tr.it_was_rejected,
  ];

   MyJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppConstant.heightAppBar.h),
        child: CustomAppBar(isHomeTap: true),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.24.h),
        child: Column(
          children: [
            BlocBuilder<MyJobsCubit, MyJobsState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...List.generate(words.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          MyJobsCubit.instance.changeIndex(index);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 8.h,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: MyJobsCubit.instance.currentIndex == index?Color(0xffE8ECF0):null,
                            border: Border.all(
                              color:
                                  MyJobsCubit.instance.currentIndex == index
                                      ? Theme.of(context).primaryColor
                                      : Color(0xffC9C9C9),
                              width: 1.w,
                            ),
                          ),
                          child: Text(
                            words[index],
                            style: AppTextStyle.textStyle(
                              appFontSize: 16.sp,
                              appFontWeight: FontWeight.w400,
                              color:MyJobsCubit.instance.currentIndex == index?Theme.of(context).primaryColor: ColorResources.blackColor,
                            ),
                          ),
                        ),
                      );
                    }),
                  ],
                );
              },
            ),
            SizedBox(height: 20.h),
            BlocBuilder<MyJobsCubit, MyJobsState>(
              builder: (context, state) {
                final List<JobModel> jobs = MyJobsCubit.instance.jobs;
                return Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 8.h,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Row(
                          spacing: 16.w,
                          children: [
                            Container(
                              width: 42.w,
                              height: 42.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  jobs[index].nameCompany,
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
                                      jobs[index].avargeRate.toString(),
                                      style: AppTextStyle.textStyle(
                                        appFontSize: 14.sp,
                                        appFontWeight: FontWeight.w400,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  jobs[index].date.toString(),
                                  style: AppTextStyle.textStyle(
                                    appFontSize: 12.sp,
                                    appFontWeight: FontWeight.w400,
                                    color: Color(0xff707070),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder:
                        (context, index) => SizedBox(height: 10.h),
                    itemCount: jobs.length,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

