import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match_job/core/routes/routes.dart';
import 'package:match_job/features/my_jobs/widgets/my_orders.dart';
import 'package:match_job/features/my_jobs/widgets/my_services.dart';
import 'package:match_job/shared/extentions/navigations.dart';

import '../../../core/constant/appStrings.dart';
import '../../../core/functions/translate.dart';
import '../../../shared/classes/text_style.dart';
import '../../../shared/resources/color_resources.dart';
import '../../../shared/widgets/custom_app_bar.dart';
import '../cubit/services_cubit.dart';

class ServicesScreen extends StatelessWidget {
  final List<String> words = [tr.the_services, tr.my_requests];

  ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppConstant.heightAppBar.h),
        child: CustomAppBar(isHomeTap: true),
      ),
      body: BlocBuilder<ServicesCubit, ServicesState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.24.h),
            child: Column(
              children: [
                BlocBuilder<ServicesCubit, ServicesState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...List.generate(words.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              ServicesCubit.instance.changeIndex(index);
                            },
                            child: Container(
                              width: 175.w,
                              padding: EdgeInsets.symmetric(
                                horizontal: 4.w,
                                vertical: 4.h,
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color:
                                        ServicesCubit.instance.currentIndex ==
                                                index
                                            ? Theme.of(context).primaryColor
                                            : Color(0xffBABABA),
                                    width: 2.w,
                                  ),
                                ),
                              ),
                              child: Text(
                                words[index],
                                style: AppTextStyle.textStyle(
                                  appFontSize: 16.sp,
                                  appFontWeight: FontWeight.w400,
                                  color:
                                      ServicesCubit.instance.currentIndex ==
                                              index
                                          ? Theme.of(context).primaryColor
                                          : Color(0xffBABABA),
                                ),
                              ),
                            ),
                          );
                        }),
                      ],
                    );
                  },
                ),
                ServicesCubit.instance.currentIndex == 0
                    ? SizedBox(height: 10.h)
                    : SizedBox(height: 20.h),
                if (ServicesCubit.instance.currentIndex == 0)
                  Column(
                    spacing: 10.h,
                    children: [
                      MyServices(title: tr.verify_your_certificate,onTap: (){
                        context.pushNamed(Routes.verifyYourCertificateScreen,arguments: tr.verify_your_certificate);
                      },),
                      MyServices(title: tr.comment),
                      MyServices(title: tr.verify_your_certificate),
                    ],
                  ),
                if (ServicesCubit.instance.currentIndex == 1)
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return MyOrders(date: '', time: '', typeProcess: '',isComplete: tr.completed,);
                      },
                      separatorBuilder:
                          (context, index) => SizedBox(height: 12.h),
                      itemCount: 10,
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
