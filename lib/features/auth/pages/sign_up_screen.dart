import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:match_job/shared/classes/text_style.dart';
import 'package:match_job/shared/extentions/navigations.dart';
import 'package:match_job/shared/resources/color_resources.dart';
import 'package:match_job/shared/widgets/custom_field_phone_number.dart';
import 'package:match_job/shared/widgets/primary_button.dart';

import '../../../core/functions/check_for_current_language.dart';
import '../../../core/functions/translate.dart';
import '../../../core/routes/routes.dart';
import '../../../shared/resources/icons_resources.dart';
import '../../../shared/widgets/textformfield.dart';
import '../cubit/auth_cubit.dart';
import '../widgets/otp_widget.dart';

import 'package:url_launcher/url_launcher.dart';

void _launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'لا يمكن فتح الرابط: $url';
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key, this.role});

  final String? role;

  @override
  Widget build(BuildContext context) {
    print("role===============>$role");
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 60.h),
        child:
            role != null && role == tr.employer
                ? SingleChildScrollView(
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
                            isArabic
                                ? Alignment.centerRight
                                : Alignment.centerRight,
                        child: Text(
                          tr.welcome,
                          textAlign:
                              isArabic ? TextAlign.right : TextAlign.left,
                          style: Theme.of(
                            context,
                          ).textTheme.headlineLarge!.copyWith(fontSize: 23.sp),
                          // AppTextStyle.textStyle(
                          //   appFontSize: 23.sp,
                          //   appFontWeight: FontWeight.w400,
                          //   color: ColorResources.blackColor,
                          // ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text.rich(
                        TextSpan(
                          text: tr.byCreatingAnAccount,
                          style: Theme.of(
                            context,
                          ).textTheme.labelMedium!.copyWith(
                            color: Color(0xff5C5C5C),
                            fontSize: 14.sp,
                            height: 1.5.sp,
                          ),
                          // AppTextStyle.textStyle(
                          //   color: Color(0xff5C5C5C),
                          //   appFontSize: 14,
                          //   appFontWeight: FontWeight.w400,
                          // ),
                          children: [
                            if (!isArabic)
                              TextSpan(
                                text: " ${tr.our}.",
                                style: Theme.of(
                                  context,
                                ).textTheme.labelMedium!.copyWith(
                                  color: Color(0xff5C5C5C),
                                  fontSize: 14.sp,
                                  height: 1.5.sp,
                                ),
                              ),
                            TextSpan(
                              text: " ${tr.userAgreement} ",
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: Theme.of(
                                context,
                              ).textTheme.headlineLarge!.copyWith(
                                color: Theme.of(context).primaryColor,
                                fontSize: 14.sp,
                                height: 1.5.sp,
                              ),
                            ),
                            TextSpan(
                              text: "${tr.and}",
                              style: Theme.of(
                                context,
                              ).textTheme.labelMedium!.copyWith(
                                color: Color(0xff5C5C5C),
                                fontSize: 14.sp,
                                height: 1.5.sp,
                              ),
                            ),
                            TextSpan(
                              text: " ${tr.privacyPolicy}",
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: Theme.of(
                                context,
                              ).textTheme.headlineLarge!.copyWith(
                                color: Theme.of(context).primaryColor,
                                fontSize: 14.sp,
                                height: 1.5.sp,
                              ),
                            ),
                            if (isArabic)
                              TextSpan(
                                text: " ${tr.our}.",
                                style: Theme.of(
                                  context,
                                ).textTheme.labelMedium!.copyWith(
                                  color: Color(0xff5C5C5C),
                                  fontSize: 14.sp,
                                  height: 1.5.sp,
                                ),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      CustomTextFormField(hintText: tr.name, obscureText: true),
                      SizedBox(height: 14.h),
                      CustomTextFormField(
                        hintText: tr.userName,
                        obscureText: true,
                      ),
                      SizedBox(height: 14.h),
                      CustomTextFormField(
                        hintText: tr.theInstitution,
                        obscureText: true,
                      ),
                      SizedBox(height: 14.h),
                      CustomTextFormField(
                        hintText: tr.theJob,
                        obscureText: true,
                      ),
                      SizedBox(height: 14.h),
                      CustomFieldPhoneNumber(
                        valueChanged: (val) {},
                        hintText: "01012804721",
                      ),
                      SizedBox(height: 14.h),
                      BlocBuilder<AuthCubit, AuthState>(
                        builder: (context, state) {
                          return CustomTextFormField(
                            obscureText: AuthCubit.instance.isShow,
                            suffixIconOnTap: () {
                              AuthCubit.instance.displayPassword();
                            },
                            hintText: tr.password,
                            suffixIcon:
                                AuthCubit.instance.isShow
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                          );
                        },
                      ),
                      SizedBox(height: 20.h),
                      PrimaryButton(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return OtPWidget();
                            },
                          );
                        },
                        title: tr.createAnewAccount,
                      ),
                      SizedBox(height: 20.h),
                      GestureDetector(
                        onTap: () {
                          context.pushReplacementNamed(Routes.login);
                        },
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: tr.do_you_already_have_an_account,
                                style: AppTextStyle.textStyle(
                                  appFontSize: 14.sp,
                                  appFontWeight: FontWeight.w400,
                                  color: Color(0xff002237),
                                ),
                              ),
                              TextSpan(
                                text: " ${tr.log_in}",
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
                )
                : SingleChildScrollView(
                  child: Form(
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
                              isArabic
                                  ? Alignment.centerRight
                                  : Alignment.centerRight,
                          child: Text(
                            tr.welcome,
                            textAlign:
                                isArabic ? TextAlign.right : TextAlign.left,
                            style: Theme.of(context).textTheme.headlineLarge!
                                .copyWith(fontSize: 23.sp),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text.rich(
                          TextSpan(
                            text: tr.byCreatingAnAccount,
                            style: Theme.of(
                              context,
                            ).textTheme.labelMedium!.copyWith(
                              color: Color(0xff5C5C5C),
                              fontSize: 14.sp,
                              height: 1.5.sp,
                            ),
                            // AppTextStyle.textStyle(
                            //   color: Color(0xff5C5C5C),
                            //   appFontSize: 14,
                            //   appFontWeight: FontWeight.w400,
                            // ),
                            children: [
                              if (!isArabic)
                                TextSpan(
                                  text: " ${tr.our}.",
                                  style: Theme.of(
                                    context,
                                  ).textTheme.labelMedium!.copyWith(
                                    color: Color(0xff5C5C5C),
                                    fontSize: 14.sp,
                                    height: 1.5.sp,
                                  ),
                                ),
                              TextSpan(
                                text: " ${tr.userAgreement} ",
                                recognizer:
                                    TapGestureRecognizer()..onTap = () {},
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineLarge!.copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 14.sp,
                                  height: 1.5.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: "${tr.and}",
                                style: Theme.of(
                                  context,
                                ).textTheme.labelMedium!.copyWith(
                                  color: Color(0xff5C5C5C),
                                  fontSize: 14.sp,
                                  height: 1.5.sp,
                                ),
                              ),
                              TextSpan(
                                text: " ${tr.privacyPolicy}",
                                recognizer:
                                    TapGestureRecognizer()..onTap = () {},
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineLarge!.copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 14.sp,
                                  height: 1.5.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              if (isArabic)
                                TextSpan(
                                  text: " ${tr.our}.",
                                  style: Theme.of(
                                    context,
                                  ).textTheme.labelMedium!.copyWith(
                                    color: Color(0xff5C5C5C),
                                    fontSize: 14.sp,
                                    height: 1.5.sp,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        CustomTextFormField(
                          hintText: tr.nationalID,
                          obscureText: true,
                        ),
                        SizedBox(height: 14.h),
                        BlocBuilder<AuthCubit, AuthState>(
                          builder: (context, state) {
                            return CustomTextFormField(
                              obscureText: AuthCubit.instance.isShow,
                              suffixIconOnTap: () {
                                AuthCubit.instance.displayPassword();
                              },
                              hintText: tr.password,
                              suffixIcon:
                                  AuthCubit.instance.isShow
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                            );
                          },
                        ),
                        SizedBox(height: 14.h),
                        Align(
                          alignment:
                              isArabic
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                          child: Text(
                            tr.choose,
                            textAlign:
                                isArabic ? TextAlign.right : TextAlign.left,
                            style: Theme.of(context).textTheme.headlineLarge!
                                .copyWith(fontSize: 16.sp),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        BlocBuilder<AuthCubit, AuthState>(
                          builder: (context, state) {
                            return Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      activeColor:
                                          Theme.of(context).primaryColor,
                                      value: false,
                                      groupValue:
                                          AuthCubit.instance.isSelectRadio,
                                      onChanged: (val) {
                                        AuthCubit.instance.selectRadio(val!);
                                      },
                                    ),
                                    Container(
                                      width: 100.w,
                                      child: Text(
                                        tr.visaFromEgypt,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(fontSize: 14.sp),
                                        //  AppTextStyle.textStyle(
                                        //   appFontSize: 14.sp,
                                        //   appFontWeight: FontWeight.w400,
                                        //   color: ColorResources.blackColor,
                                        // ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20.w),
                                Row(
                                  children: [
                                    Radio(
                                      activeColor:
                                          Theme.of(context).primaryColor,
                                      value: true,
                                      groupValue:
                                          AuthCubit.instance.isSelectRadio,
                                      onChanged: (val) {
                                        AuthCubit.instance.selectRadio(val!);
                                      },
                                    ),
                                    Container(
                                      width: 100.w,
                                      child: Text(
                                        tr.transferOfSponsorship,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(fontSize: 14.sp),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                        SizedBox(height: 14.h),
                        CustomFieldPhoneNumber(
                          valueChanged: (val) {},
                          hintText: "01012804721",
                        ),
                        SizedBox(height: 20.h),
                        PrimaryButton(
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return OtPWidget();
                              },
                            );
                          },
                          title: tr.createAnewAccount,
                        ),
                        SizedBox(height: 20.h),
                        GestureDetector(
                          onTap: () {
                            context.pushReplacementNamed(Routes.login);
                          },
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: tr.do_you_already_have_an_account,
                                  style: AppTextStyle.textStyle(
                                    appFontSize: 14.sp,
                                    appFontWeight: FontWeight.w400,
                                    color: Color(0xff002237),
                                  ),
                                ),
                                TextSpan(
                                  text: " ${tr.log_in}",
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
      ),
    );
  }
}
