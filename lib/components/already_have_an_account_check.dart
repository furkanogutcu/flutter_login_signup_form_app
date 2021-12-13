import 'package:flutter/material.dart';
import 'package:flutter_login_signup_form_app/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final void Function() onPress;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "Don't have an Account ? ",
          style: TextStyle(color: appPrimaryColor),
        ),
        GestureDetector(
          onTap: onPress,
          child: Text(
            login ? "Sign Up" : "Sign in",
            style: const TextStyle(
                color: appPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
