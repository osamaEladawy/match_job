import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:match_job/app/my_app.dart';
import 'package:match_job/features/onboarding/domain/models/onboard_model.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());
  static final OnboardingCubit _onboardingCubit = BlocProvider.of(
    navigatorKey.currentContext!,
  );
  static OnboardingCubit get instance => _onboardingCubit;

  final PageController _pageController = PageController();

  PageController get pageController => _pageController;

  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeIndex(index: currentIndex));
  }

  void back() {
    if (currentIndex > 0) {
      currentIndex--;
      pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
      currentIndex = 0;
      //* use shared preference to not display on-board again
      //navigatorKey.currentContext!.pushReplacementNamed(Routes.signUp);
    }
  }

  void nextPage() {
    currentIndex++;
    if (currentIndex > onBoarding.length - 1) {
      //* use shared preference to not display on-board again
      // navigatorKey.currentContext!.pushReplacementNamed(Routes.signUp);
    } else {
      pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  

  List<OnboardModel> onBoarding = [
    // OnboardModel(subTitle: tr.itIsALong),
    // OnboardModel(subTitle: tr.itIsALong),
    // OnboardModel(subTitle: tr.itIsALong),
    // OnboardModel(subTitle: tr.itIsALong),
  ];
  //List<OnboardingCubit> get onBoarding => _onBoarding;
}
