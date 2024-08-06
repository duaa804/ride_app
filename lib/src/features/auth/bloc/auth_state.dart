class AuthState{}
final class AuthInitialState extends AuthState{}
class SuccessToRegister extends AuthState {}

class FailedToRegister extends AuthState {
  String message;
  FailedToRegister({
    required this.message,
  });
}
class LoadingState extends AuthState{}
