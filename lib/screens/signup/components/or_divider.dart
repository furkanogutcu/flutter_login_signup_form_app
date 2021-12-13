import 'package:flutter/material.dart';
import 'package:flutter_login_signup_form_app/constants.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.75,
      child: Row(
        children: <Widget>[
          buildDivider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text("OR",
                style: TextStyle(
                  color: appPrimaryColor,
                  fontWeight: FontWeight.w600,
                )),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return const Expanded(
        child: Divider(
      color: appPrimaryColor,
      height: 1.5,
    ));
  }
}
