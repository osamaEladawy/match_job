import 'package:match_job/app_injections.dart';
import 'package:match_job/features/my_jobs/cubit/my_jobs_cubit.dart';

void myJobsInjections(){
  getIt.registerFactory<MyJobsCubit>(()=>MyJobsCubit());
}