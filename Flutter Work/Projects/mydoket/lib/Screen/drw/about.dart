import 'package:flutter/material.dart';
import 'package:mydoket/Screen/drw/drawer.dart';
class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
        ),
        drawer: drawermain(),
        body: Center(
          child: Text(
            style: TextStyle(fontSize: 14,color: Colors.black ),
            "MY DOKET (DM&TS) designed for the individual, business entity or commercial organization who want "
                "to prepare, update or locate their relevant files, documentations or tendering documents with "
                "the help of expertise personnel inter alia keep various related and important documents safely "
                "and easily accessible mode, updating and applicability condition at any given time. \n \n       "
                "       In a report released by AIIM (Association for Information and Image Management), it was "
                "stated that over 60% of all organizations and individuals are required to keep some of their "
                "records into the foreseeable future, even within the non-government sector \n \n \n ",
          ),
        ),
      ),
    );
  }
}