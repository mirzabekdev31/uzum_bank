import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum_bank/pages/splash_screen/widgets/centre_image.dart';

import '../sign_up_screen/sign_up_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    delayed();
    super.initState();
  }

  Future<void> delayed() async{
   await Future.delayed(Duration(seconds: 5));
   Navigator.pushNamed(context, SignUpScreen.route);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CentreImage(),
      ),
    );
  }
}
