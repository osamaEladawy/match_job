import 'package:match_job/app_injections.dart';
import 'package:match_job/features/job_applying/cubit/job_applying_cubit.dart';

void jobApplyingInjections(){
  getIt.registerFactory<JobApplyingCubit>(()=>JobApplyingCubit());
}