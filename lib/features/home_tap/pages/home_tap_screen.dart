import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match_job/features/home_tap/cubit/home_tap_cubit.dart';
import 'package:match_job/features/home_tap/widgets/custom_appBar.dart';

import '../../../shared/resources/color_resources.dart';

class HomeTapScreen extends StatelessWidget {
  const HomeTapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomSheet(
        enableDrag: false,
        showDragHandle: false,
        backgroundColor: ColorResources.whiteColor,
        elevation: 10,
        shadowColor: ColorResources.blackColor.withOpacity(0.05),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        onClosing: () {},
        builder:
            (context) => Container(
              height: 84.h,
              decoration: BoxDecoration(
                color: ColorResources.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: ColorResources.blackColor.withOpacity(0.05),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: BlocBuilder<HomeTapCubit, HomeTapState>(
                builder: (context, state) {
                  return 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...List.generate(
                        HomeTapCubit.instance.bottomsBarPages.length,
                        (index) {
                          return Expanded(
                            child: CustomButtonAppBar(
                              active:
                                  HomeTapCubit.instance.currentIndex == index,
                              colorText:
                                  HomeTapCubit.instance.currentIndex == index
                                      ? Theme.of(context).primaryColor
                                      : Color(0xff7A899C),
                              onPressed: () {
                                HomeTapCubit.instance.changePage(index);
                              },
                              image:
                                  HomeTapCubit
                                      .instance
                                      .bottomsBarPages[index]
                                      .icon!,
                              text:
                                  HomeTapCubit
                                      .instance
                                      .bottomsBarPages[index]
                                      .title!,
                              activeImage:
                                  HomeTapCubit
                                      .instance
                                      .bottomsBarPages[index]
                                      .activeIcon!,
                            ),
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
      ),
      body: BlocBuilder<HomeTapCubit, HomeTapState>(
        builder: (context, state) {
          return PopScope(
            child: HomeTapCubit.instance.pages.elementAt(
              HomeTapCubit.instance.currentIndex,
            ),
            onPopInvokedWithResult: (d, s) {
              return;
            },
          );
        },
      ),
    );
  }
}
