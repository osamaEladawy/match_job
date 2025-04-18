import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:match_job/core/functions/check_for_current_language.dart';
import 'package:match_job/core/functions/translate.dart';
import 'package:match_job/core/routes/routes.dart';
import 'package:match_job/features/auth/cubit/auth_cubit.dart';
import 'package:match_job/features/auth/widgets/select_role.dart';
import 'package:match_job/shared/classes/text_style.dart';
import 'package:match_job/shared/extentions/navigations.dart';
import 'package:match_job/shared/resources/color_resources.dart';
import 'package:match_job/shared/resources/icons_resources.dart';

class WelcomeScreen extends StatelessWidget {
  final List<String> words = [tr.jobSeeker, tr.employer];

  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                IconsResources.logo,
                width: 180.w,
                height: 179.h,
              ),
              SizedBox(height: 40.h),
              Align(
                alignment:
                    isArabic ? Alignment.centerRight : Alignment.centerRight,
                child: Text(
                  tr.welcome,
                  textAlign: isArabic ? TextAlign.right : TextAlign.left,
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge!.copyWith(fontSize: 23.sp),
                ),
              ),
              SizedBox(height: 20.h),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 12.h,
                    children: [
                      ...List.generate(words.length, (index) {
                        return SelectYourRole(
                          title: words[index],
                          onTap: () {
                            AuthCubit.instance.selectRole(index);
                            context.pushNamed(
                              Routes.signUp,
                              arguments: words[index],
                            );
                          },
                          border:
                              AuthCubit.instance.indexRole == index
                                  ? Color(0xffC1C9D3)
                                  : Color(0xff19446A),

                          background:
                              AuthCubit.instance.indexRole == index
                                  ? ColorResources.whiteColor
                                  : Color(0xffE8ECF0),
                        );
                      }),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
