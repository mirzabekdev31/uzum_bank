import 'package:flutter/material.dart';
import 'package:uzum_bank/di/setup.dart';
import 'package:uzum_bank/pages/password_screen/password_screen.dart';
import 'package:uzum_bank/pages/pincode_screen/pincode_screen.dart';
import 'package:uzum_bank/pages/sign_in_screen/sign_in_screen.dart';
import 'package:uzum_bank/pages/sign_up_screen/sign_up_screen.dart';
import 'package:uzum_bank/pages/splash_screen/splash_screen.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {
        SignUpScreen.route:(context)=> const SignUpScreen(),
        PasswordScreen.route:(context)=>const PasswordScreen(),
        SignInScreen.route:(context)=> const SignInScreen(),
        PinCodeScreen.route:(context)=>const PinCodeScreen()
      },
    );
  }
}

