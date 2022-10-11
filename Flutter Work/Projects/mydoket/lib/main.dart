// @2.9
import 'package:flutter/material.dart';
import 'package:mydoket/Screen/LogIn/Login.dart';
void main()
{
  runApp (myapp());
}
class myapp extends StatelessWidget {
  const myapp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
