class SignUpResponse {
  SignUpResponse({
    this.token,
    this.code,
  });

  String? token;
  String? code;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) => SignUpResponse(
    token: json["token"],
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "code": code,
  };
}
