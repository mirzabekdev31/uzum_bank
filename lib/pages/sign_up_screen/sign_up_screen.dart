import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum_bank/pages/password_screen/password_screen.dart';
import 'package:uzum_bank/pages/sign_up_screen/widgets/input_phone.dart';

class SignUpScreen extends StatefulWidget {
  static const route = "sign_up_screen";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String code="";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "Bank bilan aloqa",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Raqamingizni kiriting",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Telefon raqami",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InputPhone(phoneNumberCode: (String code) {
                        this.code=code;
                        setState(() {});
                      },)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, PasswordScreen.route,arguments: {
                      "phoneNumber":code
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 201, 183, 255)
                    ),
                    child: const Center(child: Text("Davom etish"))
                  ),
                )
              ],
            )),
      ),
    );
  }
}