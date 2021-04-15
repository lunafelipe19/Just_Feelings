import 'package:flutter/material.dart';
import 'package:just_feelings/screens/login_screen.dart';
import 'package:just_feelings/utils/constants.dart';
import 'package:intl/intl.dart';
import 'package:date_format/date_format.dart';


class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();
    TextEditingController _dateController = TextEditingController();
    String _setDate;

    Future<Null> _selectDate(BuildContext context) async {
      final DateTime picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          initialDatePickerMode: DatePickerMode.day,
          firstDate: DateTime(1930),
          lastDate: DateTime(2101));
      if (picked != null)
        setState(() {
          selectedDate = picked;
          _dateController.text = DateFormat.yMd().format(selectedDate);
        });
    }
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 60.0, 0.0, 0.0),
                  child: Text(
                    'Cadastro',
                    style:
                    TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(285.0, 45.0, 0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor),
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top:8 ,left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'NOME',
                        labelStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryColor))),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'E-MAIL',
                        labelStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryColor))),
                  ),
                  SizedBox(height: 10.0),
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
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'NOME DE USUÁRIO',
                        labelStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryColor))),
                  ),
                  InkWell(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: Container(
                      child: TextFormField(
                        enabled: false,
                        keyboardType: TextInputType.text,
                        controller: _dateController,
                        onSaved: (String val) {
                          _setDate = val;
                        },
                        decoration: InputDecoration(
                            labelText: 'DATA DE NASCIMENTO',
                            labelStyle: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            // hintText: 'EMAIL',
                            // hintStyle: ,
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: kPrimaryColor))),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: kPrimaryColor,
                        color: kPrimaryColor,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'Registrar',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto'),
                            ),
                          ),
                        ),
                      )),
                  SizedBox(height: 20.0),
                  Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) => new LoginScreen()),
                                  (Route<dynamic> route) => false);
                        },
                        child:

                        Center(
                          child: Text('Voltar',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto')),
                        ),


                      ),
                    ),
                  ),
                ],
              )),
        ]));
  }
}