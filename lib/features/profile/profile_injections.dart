import 'package:match_job/app_injections.dart';
import 'package:match_job/features/profile/cubit/profile_cubit.dart';

void profileInjection(){
  getIt.registerLazySingleton<ProfileCubit>(()=>ProfileCubit());
}