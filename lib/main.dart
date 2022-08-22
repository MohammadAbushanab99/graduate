import 'package:flutter/material.dart';
import 'package:fresh_graduate/pages/splash_screen.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp( LoginUiApp());
}

class LoginUiApp extends StatelessWidget {
  LoginUiApp({Key? key}) : super(key: key);
  Color _primaryColor = HexColor('#DC54FE');
  Color _accentColor = HexColor('#8A02AE');

  // Design color
  // Color _primaryColor= HexColor('#FFC867');
  // Color _accentColor= HexColor('#FF3CBD');

  // Our Logo Color
  // Color _primaryColor= HexColor('#D44CF6');
  // Color _accentColor= HexColor('#5E18C8');

  // Our Logo Blue Color
  //Color _primaryColor= HexColor('#651BD2');
  //Color _accentColor= HexColor('#320181');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'login',
        theme: ThemeData(
   primaryColor: _primaryColor,
         //colorScheme: ColorScheme.fromSwatch(accentColor: _accentColor).copyWith(secondary: Colors.grey),
          accentColor: _accentColor,
          primarySwatch: Colors.grey,
          scaffoldBackgroundColor: Colors.grey.shade100,

        ),
        home: const SplashScreen(title: 'Login'),

    );
  }
}


