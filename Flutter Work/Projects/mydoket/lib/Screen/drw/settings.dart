import 'package:flutter/material.dart';
import 'package:mydoket/Screen/drw/drawer.dart';
class setting extends StatelessWidget {
  const setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome To Setting'),
        ),
        drawer: drawermain(),
      ),
    );
  }
}
