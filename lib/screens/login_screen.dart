import 'package:flutter/material.dart';
import 'package:just_feelings/screens/feed_screen.dart';
import 'package:just_feelings/screens/sign_up_screen.dart';
import 'package:just_feelings/utils/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                    child: Text('VAMOS',
                        style: TextStyle(
                            fontSize: 60.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                    child: Text('LÁ',
                        style: TextStyle(
                            fontSize: 60.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(90.0, 155.0, 0.0, 0.0),
                    child: Text('.',
                        style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor)),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'E-MAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kPrimaryColor))),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'SENHA',
                          labelStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kPrimaryColor))),
                      obscureText: true,
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 15.0, left: 20.0),
                      child: InkWell(
                        child: Text(
                          'Esqueci a senha',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: kPrimaryColor,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(builder: (context) => new FeedScreen()),
                                    (Route<dynamic> route) => false);
                          },
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                )),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Novo no Just Feelings ?',
                  style: TextStyle(fontFamily: 'Roboto'),
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => new SignupScreen()),
                            (Route<dynamic> route) => false);
                  },
                  child: Text(
                    'Registrar',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ));
  }
}