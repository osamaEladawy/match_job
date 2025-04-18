import 'package:match_job/app_injections.dart';
import 'package:match_job/shared/cubits/location_bloc/location_cubit.dart';

void locationInjections(){
  getIt.registerFactory<LocationCubit>(()=>LocationCubit());
}