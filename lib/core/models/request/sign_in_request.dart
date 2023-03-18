class SignInRequest {
  SignInRequest({
    this.phoneNumber,
    this.password,
  });

  String? phoneNumber;
  String? password;

  factory SignInRequest.fromJson(Map<String, dynamic> json) => SignInRequest(
    phoneNumber: json["phone_number"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "phone_number": phoneNumber,
    "password": password,
  };
}
