part of 'onboarding_cubit.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

class OnboardingInitial extends OnboardingState {}
final class SelectPage extends OnboardingState {
  final int pageIndex;

  const SelectPage({required this.pageIndex});
   @override
  List<Object> get props => [pageIndex];
}


final class ChangeIndex extends OnboardingState {
  final int index;

  const ChangeIndex({required this.index});
   @override
  List<Object> get props => [index];
}

