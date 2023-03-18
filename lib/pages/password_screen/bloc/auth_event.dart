part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class SignUpEvent extends AuthEvent{

  final SignInRequest signInRequest;

  SignUpEvent(this.signInRequest);

}