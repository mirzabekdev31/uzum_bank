part of 'signup_bloc.dart';

@immutable
class SignupState {
  Status status;
  String message;

  SignupState({
  this.status=Status.initial,
  this.message=""
  });

  SignupState copyWith({
    Status? status,
    String? message
}){
    return SignupState(
      status: status ?? this.status,
      message: message ?? this.message
    );
  }

}

enum Status { initial, loading, fail, success }
