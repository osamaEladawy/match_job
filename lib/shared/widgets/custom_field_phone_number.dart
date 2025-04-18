import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:match_job/shared/resources/icons_resources.dart';
import 'package:match_job/shared/widgets/textformfield.dart';

import '../classes/text_style.dart';
import '../resources/color_resources.dart';

class CustomFieldPhoneNumber extends StatelessWidget {
  final ValueChanged<int> valueChanged;
  final String image;
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final bool isEditProfile;

  const CustomFieldPhoneNumber({
    super.key,
    required this.valueChanged,
    this.image = '',
    this.hintText,
    this.labelText,
    this.controller,
    this.isEditProfile = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFormField(
            obscureText: true,
            hintText: hintText,
            labelText: labelText,
            keyboardType: TextInputType.phone,
            onChanged: (val) {
              valueChanged(int.parse(val));
            },
            image: image,
            controller: controller,
          ),
        ),
        SizedBox(width: 8.w),
        Container(
           height: 52.h,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: ColorResources.whiteColor,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              width: 1.w,color: Color(0xffC1C9D3)
            )
          ),
          child: CountryCodePicker(
            onChanged: print,
            builder: (countryCode) {
              return Row(
                spacing: 3.w,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(IconsResources.arrowDown,height:24.h ,width: 24.w,),
                  Text(
                    '$countryCode',
                    style: AppTextStyle.textStyle(
                      appFontSize: 16.sp,
                      appFontHeight: 24.5.sp,
                      appFontWeight: FontWeight.w400,
                      color: Color(0xffC1C9D3),
                    ),
                  ),
                  Image.asset(
                    countryCode!.flagUri!,
                    package: 'country_code_picker',
                    width: 28.w,
                    height: 21.h,
                  ),
                ],
              );
            },
            // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
            initialSelection: '+20',
            favorite: ['+20', '+966'],
            // optional. Shows only country name and flag
            showCountryOnly: true,
            // optional. Shows only country name and flag when popup is closed.
            showOnlyCountryWhenClosed: false,
            // optional. aligns the flag and the Text left
            alignLeft: false,
            countryFilter: ['+20', '+966'],
            hideSearch: false,
            textStyle: TextStyle(
              fontSize: 14,
              color: Color(0xff414141),
              fontWeight: FontWeight.w500,
            ),
            dialogSize: Size(50, 300),
          ),
        ),
      ],
    );
  }
}
