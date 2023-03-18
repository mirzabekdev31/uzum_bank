class SignUpRequest {
  SignUpRequest({
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.password,
  });

  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? password;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => SignUpRequest(
    firstName: json["first_name"],
    lastName: json["last_name"],
    phoneNumber: json["phone_number"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "first_name": firstName,
    "last_name": lastName,
    "phone_number": phoneNumber,
    "password": password,
  };
}