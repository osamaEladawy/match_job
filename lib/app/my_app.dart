import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match_job/app_injections.dart';
import 'package:match_job/core/constant/appStrings.dart';
import 'package:match_job/core/routes/routes_generator.dart';
import 'package:match_job/core/theme/light_theme.dart';
import 'package:match_job/features/auth/cubit/auth_cubit.dart' show AuthCubit;
import 'package:match_job/features/browse/cubit/browse_cubit.dart';
import 'package:match_job/features/home/cubit/home_cubit.dart';
import 'package:match_job/features/home_tap/cubit/home_tap_cubit.dart';
import 'package:match_job/features/job_applying/cubit/job_applying_cubit.dart';
import 'package:match_job/features/onboarding/cubit/onboarding_cubit.dart';
import 'package:match_job/features/splash/cubit/theme_cubit.dart';
import 'package:match_job/features/splash/screen/splash_screen.dart';
import 'package:match_job/generated/l10n.dart';
import 'package:match_job/shared/cubits/location_bloc/location_cubit.dart';

import '../features/chat/cubit/chat_cubit.dart';
import '../features/my_jobs/cubit/my_jobs_cubit.dart';
import '../features/services/cubit/services_cubit.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<ThemeCubit>(create: (context) => getIt<ThemeCubit>()),
            BlocProvider<LocationCubit>(
              create: (context) => getIt<LocationCubit>(),
            ),
            BlocProvider<OnboardingCubit>(
              create: (context) => getIt<OnboardingCubit>(),
            ),
            BlocProvider<AuthCubit>(create: (context) => getIt<AuthCubit>()),
            BlocProvider<HomeCubit>(create: (context) => getIt<HomeCubit>()),
            BlocProvider<BrowseCubit>(create: (context) => getIt<BrowseCubit>()),
            BlocProvider<JobApplyingCubit>(create: (context) => getIt<JobApplyingCubit>()),
            BlocProvider<MyJobsCubit>(create: (context) => getIt<MyJobsCubit>()),
            BlocProvider<ServicesCubit>(create: (context) => getIt<ServicesCubit>()),
            BlocProvider<ChatCubit>(create: (context) => getIt<ChatCubit>()),

            BlocProvider<HomeTapCubit>(
              create: (context) => getIt<HomeTapCubit>(),
            ),
          ],
          child: MaterialApp(
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RoutesGenerator.onGenerateRoute,
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: Locale(AppConstant.arLang),
            theme: light,
            home: child,
          ),
        );
      },
      child: SplashScreen(),
    );
  }
}
