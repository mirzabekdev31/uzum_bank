import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uzum_bank/bloc/auth_bloc/sign_up/signup_bloc.dart';
import 'package:uzum_bank/core/models/request/sign_up_request.dart';
import 'package:uzum_bank/di/setup.dart';
import 'package:uzum_bank/pages/password_screen/widgets/input_password.dart';

import '../pincode_screen/pincode_screen.dart';

class PasswordScreen extends StatefulWidget {
  static const route = "password";

  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var number =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return BlocProvider(
      create: (context) => SignupBloc(di.get()),
      child: BlocBuilder<SignupBloc, SignupState>(
        builder: (context, state) {
          final bloc = context.read<SignupBloc>();
          return SafeArea(
            child: Scaffold(body: Builder(builder: (context) {
              switch (state.status) {
                case Status.initial:
                  return Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(Icons.arrow_back_ios)),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InputPassword(controllerPassword: controller),
                          ],
                        )),
                        GestureDetector(
                          onTap: () async {
                            bloc.add(SignUpEvent(SignUpRequest(
                                firstName: "Mirzabek",
                                lastName: "Orziyev",
                                phoneNumber: number["phoneNumber"],
                                password: controller.text)));
                          },
                          child: Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 201, 183, 255)),
                              child: const Center(child: Text("Davom etish"))),
                        )
                      ],
                    ),
                  );
                case Status.loading:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case Status.success:
                  Future.delayed(Duration.zero, () async {
                    Navigator.pushNamed(context, PinCodeScreen.route);
                    // Navigator.pushNamedAndRemoveUntil(context,
                    //     PinCodeScreen.route, (Route<dynamic> route) => false);
                  });
                  break;
                case Status.fail:
                  return const Center(
                    child: Text("Error",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                  );
              }
              return const Center();
            })),
          );
        },
      ),
    );
    ;
  }
}
