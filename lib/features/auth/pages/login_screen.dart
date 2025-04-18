import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:match_job/features/auth/widgets/otp_widget.dart';
import 'package:match_job/shared/extentions/navigations.dart';

import '../../../core/functions/check_for_current_language.dart';
import '../../../core/functions/translate.dart';
import '../../../core/routes/routes.dart';
import '../../../shared/classes/text_style.dart';
import '../../../shared/resources/color_resources.dart';
import '../../../shared/resources/icons_resources.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../../shared/widgets/textformfield.dart';
import '../cubit/auth_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 60.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset(
                IconsResources.logo,
                width: 180.w,
                height: 179.h,
              ),
              SizedBox(height: 20.h),
              Align(
                alignment:
                    isArabic ? Alignment.centerRight : Alignment.centerRight,
                child: Text(
                  tr.welcome,
                  textAlign: isArabic ? TextAlign.right : TextAlign.left,
                  style: AppTextStyle.textStyle(
                    appFontSize: 23.sp,
                    appFontWeight: FontWeight.w400,
                    color: ColorResources.blackColor,
                  ),
                ),
              ),
              SizedBox(height: 14.h),
              CustomTextFormField(hintText: tr.nationalID, obscureText: true),
              SizedBox(height: 14.h),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  return CustomTextFormField(
                    obscureText: AuthCubit.instance.isShowPasswordLogin,
                    suffixIconOnTap: () {
                      AuthCubit.instance.displayPasswordLogin();
                    },
                    hintText: tr.password,
                    suffixIcon:
                        AuthCubit.instance.isShowPasswordLogin
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                  );
                },
              ),
              SizedBox(height: 8.h),
              Align(
                alignment:
                    isArabic ? Alignment.centerLeft : Alignment.centerRight,
                child: GestureDetector(
                  onTap: (){
                    showModalBottomSheet(context: context, builder: (context){
                      return OtPWidget(isForgetPassword: true);
                    });
                  },
                  child: Text(
                    tr.forgot_your_password,
                    style: AppTextStyle.textStyle(
                      appFontSize: 12.sp,
                      appFontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              PrimaryButton(onTap: () {
                context.pushNamed(Routes.completeInfoScreen);
              }, title: tr.login),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  context.pushReplacementNamed(Routes.welcome);
                },
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: tr.dont_have_an_account,
                        style: AppTextStyle.textStyle(
                          appFontSize: 14.sp,
                          appFontWeight: FontWeight.w400,
                          color: Color(0xff002237),
                        ),
                      ),
                      TextSpan(
                        text: " ${tr.signUp}",
                        style: AppTextStyle.textStyle(
                          appFontSize: 14.sp,
                          appFontWeight: FontWeight.w400,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
