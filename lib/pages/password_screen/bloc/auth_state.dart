part of 'auth_bloc.dart';

@immutable
class AuthState {
  Status status;
  String message;

  AuthState({
    this.status = Status.initial,
    this.message = ""
  });

  AuthState copyWith({
    Status? status,
    String? message
  }) {
    return AuthState(
        status: status ?? this.status,
        message: message ?? this.message
    );
  }
}


enum Status { initial, loading, fail, success }