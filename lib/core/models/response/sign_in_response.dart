class SignInResponse {
  SignInResponse({
    this.accessToken,
  });

  String? accessToken;

  factory SignInResponse.fromJson(Map<String, dynamic> json) => SignInResponse(
    accessToken: json["access_token"],
  );

  Map<String, dynamic> toJson() => {
    "access_token": accessToken,
  };
}
