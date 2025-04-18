import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:match_job/core/functions/translate.dart';
import 'package:match_job/features/browse/screens/browse_screen.dart';
import 'package:match_job/features/home/pages/home_screen.dart';
import 'package:match_job/features/home_tap/domain/models/bottom_app_bar_model.dart';
import 'package:match_job/features/my_jobs/screens/my_jobs_screen.dart';
import 'package:match_job/shared/resources/icons_resources.dart';

import '../../../app/my_app.dart';
import '../../chat/screens/conversation_screen.dart';
import '../../services/screens/services_screen.dart';

part 'home_tap_state.dart';

class HomeTapCubit extends Cubit<HomeTapState> {
  HomeTapCubit() : super(HomeTapInitial());
  static final HomeTapCubit _homeTapCubit = BlocProvider.of(
    navigatorKey.currentContext!,
  );
  static HomeTapCubit get instance => _homeTapCubit;

  final PageController controller = PageController();

  int currentIndex = 2;
  //int activeButtonIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    ConversationScreen(),
    BrowseScreen(),
    MyJobsScreen(),
    ServicesScreen(),
  ];

  void changePage(int index) {
    currentIndex = index;
    emit(SelectPage(index: index));
  }

  void changePageController(int index) {
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
    emit(SelectPage(index: index));
  }

  List<BottomAppBarModel> bottomsBarPages = [
    BottomAppBarModel(
      id: 1,
      title: tr.my_account,
      icon: IconsResources.profile,
      activeIcon: IconsResources.profile_active,
    ),
    BottomAppBarModel(
      id: 1,
      title: tr.conversations,
      icon: IconsResources.messages,
      activeIcon: IconsResources.messages_active,
    ),
    BottomAppBarModel(
      id: 1,
      title: tr.browse,
      icon: IconsResources.obj,
      activeIcon: IconsResources.object_active,
    ),
    BottomAppBarModel(
      id: 1,
      title: tr.my_jobs,
      icon: IconsResources.task_square,
      activeIcon: IconsResources.task_square_active,
    ),
    BottomAppBarModel(
      id: 1,
      title: tr.services,
      icon: IconsResources.arrange_circle,
      activeIcon: IconsResources.arrange_circle_active,
    ),
  ];
}
