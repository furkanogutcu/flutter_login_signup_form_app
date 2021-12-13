import 'package:flutter/material.dart';
import 'package:flutter_login_signup_form_app/components/already_have_an_account_check.dart';
import 'package:flutter_login_signup_form_app/components/rounded_button.dart';
import 'package:flutter_login_signup_form_app/components/rounded_input_field.dart';
import 'package:flutter_login_signup_form_app/components/rounded_password_field.dart';
import 'package:flutter_login_signup_form_app/screens/login/components/background.dart';
import 'package:flutter_login_signup_form_app/screens/signup/signup_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "Your Email",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(buttonText: "LOGIN", onPress: () {}),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
