import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match_job/core/functions/translate.dart';
import 'package:match_job/core/routes/routes.dart';
import 'package:match_job/shared/classes/text_style.dart';
import 'package:match_job/shared/extentions/navigations.dart';
import 'package:match_job/shared/resources/color_resources.dart';
import '../../../shared/widgets/custom_field_phone_number.dart';
import '../../../shared/widgets/primary_button.dart';

class OtPWidget extends StatelessWidget {
  const OtPWidget({
    super.key,
    this.isLogin = false,
    this.isForgetPassword = false,
    this.number,
    this.time,
  });

  final bool isLogin;
  final bool isForgetPassword;
  final String? number;
  final String? time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Container(
          height: isForgetPassword ? 247.h : 343.h,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: ColorResources.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child:
              isForgetPassword
                  ? Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              context.pop();
                            },
                            icon: Icon(Icons.close),
                          ),
                          Text(
                            tr.forgot_password,
                            style: AppTextStyle.textStyle(
                              appFontSize: 18.sp,
                              appFontWeight: FontWeight.w400,
                              color: ColorResources.blackColor,
                            ),
                          ),
                          SizedBox(),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      CustomFieldPhoneNumber(
                        valueChanged: (val) {},
                        hintText: "01012804721",
                      ),
                      SizedBox(height: 16.h),
                      PrimaryButton(
                        onTap: () {
                          context.pop();
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return OtPWidget(isLogin: true);
                            },
                          );
                        },
                        title: tr.confirm,
                      ),
                    ],
                  )
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              context.pop();
                            },
                            icon: Icon(Icons.close),
                          ),
                          Text(
                            tr.Auth_code,
                            style: AppTextStyle.textStyle(
                              appFontSize: 18.sp,
                              appFontWeight: FontWeight.w400,
                              color: ColorResources.blackColor,
                            ),
                          ),
                          SizedBox(),
                        ],
                      ),
                      Center(
                        child: Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            children: [
                              TextSpan(
                                text: tr.the_authentication_code,
                                style: AppTextStyle.textStyle(
                                  appFontSize: 14.sp,
                                  letterSpacing: 0.2,
                                  appFontHeight: 24.sp,
                                  appFontWeight: FontWeight.w400,
                                  color: Color(0xff5C5C5C),
                                ),
                              ),
                              TextSpan(
                                text: "\n0100 0000000",
                                style: AppTextStyle.textStyle(
                                  appFontSize: 14.sp,
                                  appFontWeight: FontWeight.w400,
                                  color: Color(0xff5C5C5C),
                                ),
                              ),
                              TextSpan(
                                text: " ${tr.within} ",
                                style: AppTextStyle.textStyle(
                                  appFontSize: 14.sp,
                                  appFontWeight: FontWeight.w400,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              TextSpan(
                                text: "00:45",
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
                      SizedBox(height: 23.h),
                      OtpTextField(
                        showCursor: false,
                        alignment: Alignment.center,
                        decoration: InputDecoration(),
                        contentPadding: EdgeInsets.zero,
                        textStyle: AppTextStyle.textStyle(
                          appFontSize: 14.sp,
                          appFontWeight: FontWeight.w500,
                          color: ColorResources.blackColor,
                        ),
                        borderRadius: BorderRadius.circular(12.r),
                        numberOfFields: 6,
                        fieldHeight: 47.h,
                        fieldWidth: 47.w,
                        borderWidth: 1.w,
                        //borderColor: ColorResources.primaryColor,
                        // enabledBorderColor: Color(0xFFC1C9D3),
                        // disabledBorderColor: Color(0xFFEBEEF1),
                        focusedBorderColor: Color(0xffC1C9D3),
                        // Color(0xFFEBEEF1),
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        filled: true,
                        fillColor: Color(0xFFEBEEF1),
                        onSubmit: (String verificationCode) {}, // end onSubmit
                      ),
                      SizedBox(height: 23.h),
                      Center(
                        child: Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            children: [
                              TextSpan(
                                text: tr.didnt_receive_the_code,
                                style: AppTextStyle.textStyle(
                                  appFontSize: 14.sp,
                                  appFontWeight: FontWeight.w400,
                                  color: Color(0xff002237),
                                ),
                              ),
                              TextSpan(
                                text: " ${tr.resend}",
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
                      SizedBox(height: 16.h),
                      PrimaryButton(
                        onTap: () {
                          if (isLogin) {
                            context.pushNamed(Routes.resetPassword);
                            return;
                          } else {
                            context.pushNamed(Routes.completeInfoScreen);
                          }
                        },
                        title:
                            isLogin ? tr.follow : tr.Follow_up_on_registration,
                      ),
                    ],
                  ),
        ),
      ),
    );
  }
}
