import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:match_job/core/classes/responsive_screen.dart';
import 'package:match_job/core/routes/routes.dart';
import 'package:match_job/shared/extentions/navigations.dart';
import 'package:match_job/shared/resources/color_resources.dart';
import 'package:match_job/shared/resources/icons_resources.dart';
import 'package:match_job/shared/resources/image_resources.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //ThemeCubit.instance.initSharedData();
    Future.delayed(const Duration(milliseconds: 3000), () {
      context.pushReplacementNamed(Routes.welcome);
    });
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints(
          maxWidth: ResponsiveScreen.width,
          maxHeight: ResponsiveScreen.height,
          minHeight: ResponsiveScreen.height,
          minWidth: ResponsiveScreen.width,
        ),
        decoration: BoxDecoration(color: ColorResources.whiteColor),
        child: SvgPicture.asset(IconsResources.logo),
      ),
    );
  }
}
