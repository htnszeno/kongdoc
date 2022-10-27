part of 'login_cubit.dart';

class LoginState extends Equatable {
  const LoginState({
    this.userId = const UserId.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });
  final UserId userId;
  final Email email;
  final Password password;
  final FormzStatus status;
  final String? errorMessage;

  @override
  List<Object> get props => [userId, email, password, status];

  LoginState copyWith({
    UserId? userId,
    Email? email,
    Password? password,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return LoginState(
        userId: userId ?? this.userId,
        email: email ?? this.email,
        password: password ?? this.password,
        status: status ?? this.status,
        errorMessage: errorMessage ?? this.errorMessage);
  }
}
