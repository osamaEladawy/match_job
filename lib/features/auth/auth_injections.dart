import 'package:match_job/app_injections.dart';
import 'package:match_job/features/auth/cubit/auth_cubit.dart';

void authInjections(){
  getIt.registerFactory<AuthCubit>(()=>AuthCubit());
}