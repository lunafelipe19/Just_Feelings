import 'package:flutter/material.dart';
import 'package:just_feelings/screens/login_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'utils/constants.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
    theme: ThemeData(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: Colors.white,


    ),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 6,
        navigateAfterSeconds: LoginScreen(),
        image: new Image.asset('assets/images/jf_logo.gif'),
        backgroundColor: Colors.white,
        photoSize: 200.0,
    );
  }
}
