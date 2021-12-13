import 'package:flutter/material.dart';
import 'package:flutter_login_signup_form_app/components/text_field_container.dart';
import 'package:flutter_login_signup_form_app/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
            hintText: "Password",
            icon: Icon(
              Icons.lock,
              color: appPrimaryColor,
            ),
            suffixIcon: Icon(Icons.visibility, color: appPrimaryColor),
            border: InputBorder.none),
      ),
    );
  }
}
