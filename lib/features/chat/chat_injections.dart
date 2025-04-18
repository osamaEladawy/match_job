import 'package:match_job/app_injections.dart';
import 'package:match_job/features/chat/cubit/chat_cubit.dart';

void chatInjections(){
  getIt.registerLazySingleton<ChatCubit>(()=>ChatCubit());
}