import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inspect_pix/screen/signinscreen/SignInScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignInPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/splash.png'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
      ),
    );
  }
}
