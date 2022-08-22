import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fresh_graduate/pages/home_page.dart';
import 'package:fresh_graduate/pages/profile_page.dart';
import 'package:fresh_graduate/pages/registration_page.dart';
import 'package:fresh_graduate/pages/widgets/header_widget.dart';

import '../common/theme_helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true, Icons.login_rounded),
            ),
            SafeArea(
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
              children: [
                Text(
                  "Hello",
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Signin into your account",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextField(
                          decoration: ThemeHelper().textInputDecoration(
                        'User Name',
                        "Enter your user name",
                      )),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextField(
                        obscureText: true,
                          decoration: ThemeHelper().textInputDecoration(
                            'Password',
                            "Enter your password",
                          )
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                        alignment: Alignment.topRight,
                        child: Text('Forgot your password?'),
                      ),
                      Container(
                        decoration:ThemeHelper().buttonBoxDecoration(context),
                        child: ElevatedButton(
                          style: ThemeHelper().buttonStyle(),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                            child: Text('Sign In'.toUpperCase(),style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold, color: Colors.white)),
                          ),
                          onPressed: (){
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));

                          },
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
                        //child: Text('Dont\' have an account? Create'),
                        child: Text.rich(TextSpan(
                          children: [
                            TextSpan(text:'Dont\' have an account? ' ),
                            TextSpan(text: 'Create',
                            recognizer: TapGestureRecognizer()
                            ..onTap=(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage()));
                                },
                            style: TextStyle(fontWeight: FontWeight.bold , color:Theme.of(context).accentColor)),

                          ]
                        )),
                      )
                    ],
                  ),
                )
              ],
            )))
          ],
        ),
      ),
    );
  }
}
