import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mydoket/Screen/drw/home.dart';

class forgetpass extends StatelessWidget {
  forgetpass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool iagree = false;


    Widget buildfoPassword() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Password',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2)
                  )
                ]
            ),
            height: 60,
            child: TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xffc6f1ba),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  )
              ),
            ),
          )
        ],
      );
    }


    Widget buildfocPassword() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Confirm Password',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2)
                  )
                ]
            ),
            height: 60,
            child: TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xffc6f1ba),
                  ),
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  )
              ),
            ),
          )
        ],
      );
    }


    Widget buildremember() {
      return Row(
        children: <Widget>[
          const Text('I agree to the ',
            style: TextStyle(
              fontSize: 18,
            ),),
          TextButton(
            child: const Text(
              'Terms and Conditions',
              style: TextStyle(fontSize: 18,color: Colors.blue),
            ),
            onPressed: () {
              /*Navigator.of(context).pop();
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => login()));*/
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      );
    }


    Widget buildasubmit() {
      return Center(
        child: Container(
          //padding: EdgeInsets.symmetric(vertical: 25),
          height: 40,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.indigo, borderRadius: BorderRadius.circular(8)
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => home()));
            },
            child: Text('Submit',
              style: TextStyle(
                color: Colors.white, fontSize: 20,
              ),
            ),
          ),
        ),
      );
    }


    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xfff3f6f4),
                        Color(0xccf3f6f4),
                        Color(0x99f3f6f4),
                        Color(0x66f3f6f4),
                      ]
                  ),
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 120
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Container(
                        height: 50,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(15)
                            ),
                            color: Colors.indigo
                        ),
                        alignment: Alignment.center,
                        //color: Colors.indigo,
                        child: Text("REGISTRATION",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 25.0,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(height: 20),
                      buildfoPassword(),

                      SizedBox(height: 20),
                      buildfocPassword(),

                      SizedBox(height: 5),
                      buildremember(),

                      SizedBox(height: 20),
                      buildasubmit(),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
  void setState(Null Function() param0) {}
