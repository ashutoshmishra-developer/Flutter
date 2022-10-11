import 'package:flutter/material.dart';
import 'package:mydoket/Screen/drw/drawer.dart';
class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        drawer: drawermain(),
      ),
    );
  }
}
