import 'package:match_job/app_injections.dart';
import 'package:match_job/features/services/cubit/services_cubit.dart';

void servicesInjections(){
  getIt.registerFactory<ServicesCubit>(()=>ServicesCubit());
}