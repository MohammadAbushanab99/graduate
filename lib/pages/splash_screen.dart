import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
bool _isVisible =false;
_SplashScreenState(){

  Timer(const Duration(milliseconds:2000 ),(){
    setState((){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);

    });});
    Timer(const Duration(milliseconds: 10 ),(){
      setState((){
        _isVisible=true;

      });

  });
}


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        gradient: LinearGradient(colors:[Theme.of(context).accentColor,Theme.of(context).primaryColor],
        begin:  const FractionalOffset(0, 0),
            end: const FractionalOffset(1.0, 0.0),
          stops: [0.0,1.0],
          tileMode: TileMode.clamp,
        )
      ) ,
      child: AnimatedOpacity(
        opacity:_isVisible? 1.0:0,
        duration: Duration(microseconds: 1200),
        child: Center(
          child: Container(
            height: 140.0,
              width: 140.0,
              child: Center(
                child: ClipOval(
                  child: Icon(Icons.android_outlined ,size: 128,),//lopo
                ),
              ),
            decoration:BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.3),
                blurRadius: 2.0 ,
                offset: Offset(5.0,3.0),
                spreadRadius: 2.0),
              ]
            ),
          ),
        ),
        
      ),
    );

  }
}