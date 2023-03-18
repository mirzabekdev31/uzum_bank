import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  TextEditingController controllerPassword=TextEditingController();

  InputPassword({Key? key,required this.controllerPassword}) : super(key: key);

  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controllerPassword,
      autofocus: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[800]),
          hintText: "Enter Password",
          fillColor: Colors.white70),
    );
  }
}
