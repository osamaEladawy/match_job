import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:match_job/app/my_app.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static final AuthCubit _authCubit = BlocProvider.of(
    navigatorKey.currentContext!,
  );

  static AuthCubit get instance => _authCubit;

  bool isShow = false;
  bool isShowPasswordLogin = false;
  bool isShowNewPassword = false;
  bool isShowConfirmPassword = false;

  bool isSelectRadio = false;
  int indexRole = 0;

  void selectRole(int index) {
    indexRole = index;
    emit(SelectRole(role: indexRole));
  }

  void selectRadio(bool value) {
    if (isSelectRadio != value) {
      isSelectRadio = value;
      emit(SelectCheckBox(value: isSelectRadio));
    }
  }

  void displayPassword() {
    isShow = !isShow;
    emit(DisplayPassword(value: isShow));
  }
  void displayPasswordLogin() {
    isShowPasswordLogin = !isShowPasswordLogin;
    emit(DisplayPasswordLogin(value: isShowPasswordLogin));
  }
  void displayNewPassword() {
    isShowNewPassword = !isShowNewPassword;
    emit(DisplayNewPassword(value: isShowNewPassword));
  }
  void displayConfirmPassword() {
    isShowConfirmPassword = !isShowConfirmPassword;
    emit(DisplayConfirmPassword(value: isShowConfirmPassword));
  }
}
