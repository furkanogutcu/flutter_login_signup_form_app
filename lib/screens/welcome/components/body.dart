import 'package:flutter/material.dart';
import 'package:flutter_login_signup_form_app/components/rounded_button.dart';
import 'package:flutter_login_signup_form_app/constants.dart';
import 'package:flutter_login_signup_form_app/screens/login/login_screen.dart';
import 'package:flutter_login_signup_form_app/screens/signup/signup_screen.dart';
import 'package:flutter_login_signup_form_app/screens/welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.5,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              buttonText: "LOGIN",
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
            RoundedButton(
              buttonText: "SIGN UP",
              backColor: appPrimaryLightColor,
              textColor: Colors.black,
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
            ),
          ],
        ),
      ),
    );
  }
}
