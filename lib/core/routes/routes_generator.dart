import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:match_job/core/routes/routes.dart';
import 'package:match_job/features/auth/pages/login_screen.dart';
import 'package:match_job/features/auth/pages/sign_up_screen.dart';
import 'package:match_job/features/browse/domain/models/company_model.dart';
import 'package:match_job/features/browse/screens/browse_screen.dart';
import 'package:match_job/features/home/pages/home_screen.dart';
import 'package:match_job/features/home_tap/pages/home_tap_screen.dart';
import 'package:match_job/features/job_applying/screens/job_applying_screen.dart';
import 'package:match_job/features/my_jobs/screens/my_jobs_screen.dart';
import 'package:match_job/features/onboarding/pages/on_boarding_screen.dart';
import 'package:match_job/features/splash/screen/splash_screen.dart';
import 'package:match_job/features/auth/pages/welcome_screen.dart';

import '../../features/auth/pages/reset_password_screen.dart';
import '../../features/chat/screens/chat_screen.dart';
import '../../features/complete_info/screens/complete_info_screen.dart';
import '../../features/my_jobs/screens/verify_your_certificate_screen.dart';

class RoutesGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final isIos = defaultTargetPlatform == TargetPlatform.iOS;
    final nameRoute = settings.name;
    final arg = settings.arguments;

    switch (nameRoute) {
      case Routes.splash:
        return _buildRoute(const SplashScreen(), isIos);
      case Routes.onBoard:
        return _buildRoute(const OnBoardingScreen(), isIos);
      case Routes.home:
        return _buildRoute(const HomeScreen(), isIos);
      case Routes.login:
        return _buildRoute(const LoginScreen(), isIos);
      case Routes.signUp:
        if (arg is String?) {
          return _buildRoute(SignUpScreen(role: arg), isIos);
        } else {
          return _buildRoute(const UndefinedWidget(), isIos);
        }
      case Routes.welcome:
        return _buildRoute(WelcomeScreen(), isIos);
      case Routes.homeTap:
        return _buildRoute(const HomeTapScreen(), isIos);
      case Routes.resetPassword:
        return _buildRoute(const ResetPasswordScreen(), isIos);
      case Routes.completeInfoScreen:
        return _buildRoute(const CompleteInfoScreen(), isIos);
      case Routes.chatScreen:
        return _buildRoute(const ChatScreen(), isIos);
      case Routes.browse:
        return _buildRoute(const BrowseScreen(), isIos);
      case Routes.myJobsScreen:
        return _buildRoute(MyJobsScreen(), isIos);
      case Routes.jobApplyingScreen:
        if (arg is CompanyModel) {
          return _buildRoute(JobApplyingScreen(companyModel: arg), isIos);
        } else {
          return _buildRoute(const UndefinedWidget(), isIos);
        }
      case Routes.verifyYourCertificateScreen:
        if (arg is String) {
          return _buildRoute(
            VerifyYourCertificateScreen(nameScreen: arg),
            isIos,
          );
        } else {
          return _buildRoute(const UndefinedWidget(), isIos);
        }

      default:
        return _buildRoute(const UndefinedWidget(), isIos);
    }
  }

  static _buildRoute(Widget page, bool isIos) {
    if (isIos) {
      return CupertinoPageRoute(builder: (_) => page);
    } else {
      return MaterialPageRoute(builder: (_) => page);
    }
  }
}

class UndefinedWidget extends StatelessWidget {
  const UndefinedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("undefined")),
      body: const Center(child: Text("undefined")),
    );
  }
}
