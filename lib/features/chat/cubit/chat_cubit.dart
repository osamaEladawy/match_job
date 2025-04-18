import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:match_job/app/my_app.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  static final ChatCubit _chatCubit =BlocProvider.of(navigatorKey.currentContext!);
  static ChatCubit get instance=> _chatCubit;
}
