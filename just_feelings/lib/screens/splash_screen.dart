import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_feelings/screens/login_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(IntroductionScreen());

class IntroductionScreen extends Scaffold {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 14,
        navigateAfterSeconds: new LoginScreen(),
        image: new Image.asset('assets/images/jf_logo.gif'),
        backgroundColor: Colors.white,
        photoSize: 100.0,
    );
  }
}
