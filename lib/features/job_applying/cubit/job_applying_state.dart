part of 'job_applying_cubit.dart';

sealed class JobApplyingState extends Equatable {
  const JobApplyingState();

  @override
  List<Object> get props => [];
}

final class JobApplyingInitial extends JobApplyingState {}
