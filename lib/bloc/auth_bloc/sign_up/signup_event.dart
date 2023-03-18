part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignUpEvent extends SignupEvent{
  final SignUpRequest signUpRequest;

  SignUpEvent(this.signUpRequest);
}
