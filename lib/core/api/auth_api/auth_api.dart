import 'package:dio/dio.dart';
import 'package:uzum_bank/core/api/auth_api/api_base.dart';
import 'package:uzum_bank/core/models/request/sign_up_request.dart';

import '../../models/response/sign_up_response.dart';


class AuthApi{
  final ApiBase _base;

  AuthApi(this._base);

  Future<Response<SignUpResponse>> signUp({
    required SignUpRequest signUpRequest,
  }) async {
    final response = await _base.dio.post(
      "/auth/sign-up",
      data: signUpRequest.toJson()
    );
    return response.data;
  }

  // Future<void> signIn({
  //   required String phone,
  //   required String password,
  // }) async {
  //   final response = await _base.dio.post(
  //     "/auth/sign-in",
  //     data: {"phone_number": phone, "password": password},
  //   );
  //   await _base.saveToken(response.data["access_token"]);
  // }

  Future<Response> signUpVerify({
    required String token,
    required String code,
  }) async {
    final response = await _base.dio.post(
      "/auth/sign-up/verify",
      data: {"token": token, "code": code},
    );
    return response;
  }

  Future<Response> signUpResend({
    required String token,
  }) async {
    final response = await _base.dio.post(
      "/auth/sign-up/resend",
      data: {"token": token},
    );
    return response;
  }
}