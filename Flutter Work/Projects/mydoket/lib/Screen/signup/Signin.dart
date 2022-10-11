import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mydoket/Screen/drw/otp.dart';
import '../LogIn/Login.dart';
import '../home/homepage.dart';
import '../signup/Signin.dart';

class three extends StatefulWidget {
  const three({Key? key}) : super(key: key);

  @override
  State<three> createState() => _threeState();
}

class _threeState extends State<three> {


  Widget buildName(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Text(
          'Name:',
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
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.abc_sharp,
                  color: Color(0xffc6f1ba),
                ),
                hintText: 'Enter Your Full Name',
                hintStyle: TextStyle(
                  color: Colors.black,
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Text(
          'Email Id',
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
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xffc6f1ba),
                ),
                hintText: 'Enter Email-Id',
                hintStyle: TextStyle(
                  color: Colors.black,
                )
            ),
          ),
        )
      ],
    );
  }


  Widget buildMobile(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Text(
          'Mobile',
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
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            obscureText: false,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.mobile_friendly,
                  color: Color(0xffc6f1ba),
                ),
                hintText: 'Enter Mobile Number',
                hintStyle: TextStyle(
                  color: Colors.black,
                )
            ),
          ),
        )
      ],
    );
  }


  /*Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
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
                    offset: Offset(0,2)
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
*/

  Widget buildOtp(){
    return Center(
      child: Container(
        //padding: EdgeInsets.symmetric(vertical: 25),
        height: 40,
        width: 150,
        decoration: BoxDecoration(
            color:Colors.indigo,borderRadius:BorderRadius.circular(8)
        ),
        child:TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => sendotp()));
          },
          child: Text('Send OTP',
            style: TextStyle(
              color:Colors.white,fontSize:20,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildallogin(){
    return Row(
      children: <Widget>[
        const Text('Already a Member?',
          style: TextStyle(
            fontSize: 18,
          ),),
        TextButton(
          child: const Text(
            'Log In',
            style: TextStyle(fontSize: 20,color: Colors.blue),
          ),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => login()));
          },
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }


  @override
  Widget build(BuildContext context) {
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
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      buildName(),
                      SizedBox(height: 20),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildMobile(),
                      SizedBox(height: 20),
                      buildOtp(),
                      SizedBox(height: 5),
                      buildallogin(),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
