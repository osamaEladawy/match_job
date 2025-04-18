part of 'my_jobs_cubit.dart';

sealed class MyJobsState extends Equatable {
  const MyJobsState();

  @override
  List<Object> get props => [];
}

final class MyJobsInitial extends MyJobsState {

}

final class ChangeIndex extends MyJobsState {
  final int currentIndex;

  const ChangeIndex(this.currentIndex);

  @override
  List<Object> get props => [currentIndex];
}
