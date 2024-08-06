
import 'package:ride_app/core/model/login_model.dart';

import '../model/client_model.dart';

class AuthEvent{}
final class AuthEventInitial extends AuthEvent{}
class Register extends AuthEvent {
 final ClientModel client;
  Register({
    required this.client,
  });
}
class Login extends AuthEvent{
  final LoginModel user;
  Login({
    required this.user,
  });
}