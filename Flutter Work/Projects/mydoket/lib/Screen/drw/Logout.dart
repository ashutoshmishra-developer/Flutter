import 'package:flutter/material.dart';
import 'package:mydoket/Screen/drw/drawer.dart';
class logout extends StatelessWidget {
  const logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Log Out'),
        ),
        drawer: drawermain(),
      ),
    );
  }
}
