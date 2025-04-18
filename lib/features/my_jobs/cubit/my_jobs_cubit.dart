import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:match_job/app/my_app.dart';
import 'package:match_job/features/my_jobs/domain/models/job_model.dart';

part 'my_jobs_state.dart';

class MyJobsCubit extends Cubit<MyJobsState> {
  MyJobsCubit() : super(MyJobsInitial());
  static final MyJobsCubit _jobsCubit = BlocProvider.of(navigatorKey.currentContext!);
  static MyJobsCubit get instance =>_jobsCubit;
  int currentIndex = 0;
  void changeIndex(index){
    currentIndex= index;
    emit(ChangeIndex(currentIndex));
  }
  List<JobModel>jobs =[
    JobModel( 1,'اسم الشركة', ' تم التقديم في 13-12-2024 ', '', 4.5),
    JobModel( 1,'اسم الشركة', ' تم التقديم في 13-12-2024 ', '', 4.5),
    JobModel( 1,'اسم الشركة', ' تم التقديم في 13-12-2024 ', '', 4.5),
    JobModel( 1,'اسم الشركة', ' تم التقديم في 13-12-2024 ', '', 4.5),
    JobModel( 1,'اسم الشركة', ' تم التقديم في 13-12-2024 ', '', 4.5),
    JobModel( 1,'اسم الشركة', ' تم التقديم في 13-12-2024 ', '', 4.5),
    JobModel( 1,'اسم الشركة', ' تم التقديم في 13-12-2024 ', '', 4.5),
    JobModel( 1,'اسم الشركة', ' تم التقديم في 13-12-2024 ', '', 4.5),
  ];

}

