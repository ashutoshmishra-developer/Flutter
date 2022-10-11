import 'package:flutter/material.dart';
import 'package:mydoket/Screen/LogIn/Login.dart';
import 'package:splashscreen/splashscreen.dart';
class spl extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SplashScreen(
        seconds:3,
        navigateAfterSeconds:login(),
        title: new Text(
          'MyDoket',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.red),
        ),
        image: new Image.asset('asset/logo.png'),
        photoSize: 100.0,
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        loaderColor: Colors.blueAccent
    );
  }
}