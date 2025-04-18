import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:match_job/core/routes/routes.dart';
import 'package:match_job/shared/extentions/navigations.dart';
import 'package:match_job/shared/widgets/primary_button.dart';

import '../../../core/functions/translate.dart';
import '../../../shared/resources/icons_resources.dart';
import '../../../shared/widgets/textformfield.dart';
import '../cubit/auth_cubit.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 60.h),
        child: Column(
          children: [
            SvgPicture.asset(IconsResources.logo, width: 180.w, height: 179.h),
            SizedBox(height: 20.h),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return CustomTextFormField(
                  obscureText: AuthCubit.instance.isShowNewPassword,
                  suffixIconOnTap: () {
                    AuthCubit.instance.displayNewPassword();
                  },
                  hintText: tr.newPassword,
                  suffixIcon:
                      AuthCubit.instance.isShowNewPassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                );
              },
            ),
            SizedBox(height: 14.h),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return CustomTextFormField(
                  obscureText: AuthCubit.instance.isShowConfirmPassword,
                  suffixIconOnTap: () {
                    AuthCubit.instance.displayConfirmPassword();
                  },
                  hintText: tr.confirmPassword,
                  suffixIcon:
                      AuthCubit.instance.isShowConfirmPassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                );
              },
            ),
            SizedBox(height: 20.h),
            PrimaryButton(onTap: () {
              context.pushNamedAndRemoveUntil(Routes.login);
            }, title: tr.confirm),
          ],
        ),
      ),
    );
  }
}
