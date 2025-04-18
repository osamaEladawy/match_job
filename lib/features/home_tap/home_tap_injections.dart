import 'package:match_job/app_injections.dart';
import 'package:match_job/features/home_tap/cubit/home_tap_cubit.dart';

void homeTapInjections(){
  getIt.registerFactory<HomeTapCubit>(()=>HomeTapCubit());
}