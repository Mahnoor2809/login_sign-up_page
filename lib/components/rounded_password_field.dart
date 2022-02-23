import 'package:flutter/material.dart';
import 'package:login_signup_page/components/text_field_container.dart';
import '../constant.dart';

class RoundPasswordField extends StatelessWidget {
  final String hintText;
  final ValueChanged onChanged;

  const RoundPasswordField({
    Key? key,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFieldContainer(
      child: TextField(
        obscureText: true, // for make password in obscure
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: Icon(
            Icons.visibility,
          ),
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          border: InputBorder.none, // for hide bottom line
        ),
      ) ,
    );
  }
}

