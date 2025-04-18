import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:match_job/app/my_app.dart';

part 'job_applying_state.dart';

class JobApplyingCubit extends Cubit<JobApplyingState> {
  JobApplyingCubit() : super(JobApplyingInitial());
  static final JobApplyingCubit _applyingCubit=BlocProvider.of(navigatorKey.currentContext!);
  static JobApplyingCubit get instance=> _applyingCubit;
}
