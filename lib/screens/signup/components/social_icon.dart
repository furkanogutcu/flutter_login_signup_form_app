import 'package:flutter/material.dart';
import 'package:flutter_login_signup_form_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  final String iconSource;
  final void Function() onPress;

  const SocialIcon({
    Key? key,
    required this.iconSource,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: appPrimaryLightColor,
            ),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconSource,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
