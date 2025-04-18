import 'package:match_job/app_injections.dart';
import 'package:match_job/features/home/cubit/home_cubit.dart';

void homeInjections(){
  getIt.registerFactory<HomeCubit>(()=>HomeCubit());
}