part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class SelectRole extends AuthState {
  final int role;

  const SelectRole({required this.role});
  @override
  List<Object> get props => [role];
}

class SelectCheckBox extends AuthState {
  final bool value;

  const SelectCheckBox({required this.value});

  @override
  List<Object> get props => [value];
}

class DisplayPassword extends AuthState {
  final bool value;

  const DisplayPassword({required this.value});

  @override
  List<Object> get props => [value];
}

class DisplayPasswordLogin extends AuthState {
  final bool value;

  const DisplayPasswordLogin({required this.value});

  @override
  List<Object> get props => [value];
}

class DisplayConfirmPassword extends AuthState {
  final bool value;

  const DisplayConfirmPassword({required this.value});

  @override
  List<Object> get props => [value];
}

class DisplayNewPassword extends AuthState {
  final bool value;

  const DisplayNewPassword({required this.value});

  @override
  List<Object> get props => [value];
}
