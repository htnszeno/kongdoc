part of 'app_bloc.dart';

class AppState extends Equatable {
  final AuthenticationStatus status;
  final User user;
  const AppState._({required this.status, this.user = User.empty});

  const AppState.authenticated(User user)
      : this._(status: AuthenticationStatus.authenticated, user: user);

  const AppState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  const AppState.unknown() : this._(status: AuthenticationStatus.unknown);
  @override
  List<Object> get props => [status, user];
}
