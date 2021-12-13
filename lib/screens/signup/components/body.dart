import 'package:flutter/material.dart';
import 'package:flutter_login_signup_form_app/components/already_have_an_account_check.dart';
import 'package:flutter_login_signup_form_app/components/rounded_button.dart';
import 'package:flutter_login_signup_form_app/components/rounded_input_field.dart';
import 'package:flutter_login_signup_form_app/components/rounded_password_field.dart';
import 'package:flutter_login_signup_form_app/screens/login/login_screen.dart';
import 'package:flutter_login_signup_form_app/screens/signup/components/background.dart';
import 'package:flutter_login_signup_form_app/screens/signup/components/or_divider.dart';
import 'package:flutter_login_signup_form_app/screens/signup/components/social_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
                hintText: "Your Email",
                icon: Icons.person,
                onChanged: (value) {}),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(buttonText: "SIGNUP", onPress: () {}),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSource: "assets/icons/facebook.svg",
                  onPress: () {},
                ),
                SocialIcon(
                  iconSource: "assets/icons/twitter.svg",
                  onPress: () {},
                ),
                SocialIcon(
                  iconSource: "assets/icons/google-plus.svg",
                  onPress: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
