import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/constant.dart';
import 'package:myapp1/login/registrationOrEntry.dart';

class AppMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage(
              'assets/images/1.png',
            ),
          ),
        ),
        child: Expanded(
          child: InkWell(
            child: Center(

              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Together for a Smarter Future!',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RegistrationOrEntryPage()),
              );
            },
          ),
        ),
      ),
    );
  }
}
