import 'package:match_job/app_injections.dart';
import 'package:match_job/features/browse/cubit/browse_cubit.dart';

void browseInjections(){
  getIt.registerFactory<BrowseCubit>(()=>BrowseCubit());
}