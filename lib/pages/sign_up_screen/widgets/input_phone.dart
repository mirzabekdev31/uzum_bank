import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class InputPhone extends StatefulWidget {

  final Function(String code) phoneNumberCode;

  InputPhone({Key? key,required this.phoneNumberCode}) : super(key: key);

  @override
  State<InputPhone> createState() => _InputPhoneState();
}

class _InputPhoneState extends State<InputPhone> {

  TextEditingController controllerPhone=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return IntlPhoneField(
          controller: controllerPhone,
          decoration:  InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.greenAccent),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          initialCountryCode: 'UZ',
          onChanged: (phone) {
            widget.phoneNumberCode.call(phone.completeNumber);
            print(phone.countryCode);
          },
        );
      }
    );
  }
}
