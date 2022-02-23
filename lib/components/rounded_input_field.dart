import 'package:flutter/material.dart';
import 'package:login_signup_page/components/text_field_container.dart';

import '../constant.dart';

class RoundInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged onChanged;
  const RoundInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(child: TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        icon: Icon(icon,
          color: kPrimaryColor,
        ),
        border: InputBorder.none,
      ),
    ),
    );
  }
}

