import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:match_job/app/my_app.dart';
import 'package:meta/meta.dart';

part 'services_state.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit() : super(ServicesInitial());
static final ServicesCubit _servicesCubit =BlocProvider.of(navigatorKey.currentContext!);
static ServicesCubit get instance => _servicesCubit;
  int currentIndex = 0;
  void changeIndex(index){
    currentIndex= index;
    emit(ChangeIndex(currentIndex));
  }

}
