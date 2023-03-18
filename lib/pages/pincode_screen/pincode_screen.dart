import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PinCodeScreen extends StatefulWidget {
  static const route="pincode";
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Enter Pin Code",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
