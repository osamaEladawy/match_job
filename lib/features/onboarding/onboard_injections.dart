
import 'package:match_job/app_injections.dart';
import 'package:match_job/features/onboarding/cubit/onboarding_cubit.dart';

void onBoardInjections(){
  getIt.registerFactory<OnboardingCubit>(()=>OnboardingCubit());
}