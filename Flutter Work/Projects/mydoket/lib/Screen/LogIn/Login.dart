import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../home/homepage.dart';
import '../signup/Signin.dart';

class login extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<login>{

  bool isRememberMe = false;

  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Text(
          'Email or Phone',
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
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.black,
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword(){
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

  Widget buildforgetpassbtn(){
    return Container(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
          /*onTap: (){
            Navigator.of(context).pop();
            Navigator.push(context, MaterialPageRoute(builder: (_)=> buildEmail()));*/
        child: TextButton(
          onPressed: () => print("Forget Password"),
//      padding: EdgeInsets.only(right: 0), //forget password go to right side
          child: Text(
            'Forget Password?',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildremember(){
    return Container(
      height: 20,
      child: Row(
        children:<Widget> [
          Theme(data: ThemeData(unselectedWidgetColor: Colors.black),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.white,
              activeColor: Colors.indigo,
              onChanged: (value){
                setState(() {
                  isRememberMe= value!;
                });
              },
            ),
          ),
          Text('Remember Me',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget buildlogin(){
    return Center(
      child: Container(
        //padding: EdgeInsets.symmetric(vertical: 25),
        height: 40,
        width: 100,
        decoration: BoxDecoration(
            color:Colors.indigo,borderRadius:BorderRadius.circular(8)
        ),
        child:TextButton(
         onPressed: () {
           Navigator.push(
               context, MaterialPageRoute(builder: (_) => homepage()));
                        },
          child: Text('Login',
            style: TextStyle(
              color:Colors.white,fontSize:20,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildsignin(){
    return Center(
      child: Container(
        //padding: EdgeInsets.symmetric(vertical: 25),
        height: 40,
        width: 250,
        decoration: BoxDecoration(
            color:Colors.green,borderRadius:BorderRadius.circular(8)
        ),
        child:TextButton(
          onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => three()));
          },
          child: Text('Create New Account',
            style: TextStyle(
              color:Colors.white,fontSize:20,
            ),
          ),
        ),
      ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Text("Welcome back...",
                        style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 20),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildPassword(),
                      SizedBox(height: 5),
                      buildforgetpassbtn(),
                      SizedBox(height: 5),
                      buildremember(),
                      SizedBox(height: 20),
                      buildlogin(),
                      SizedBox(height: 20),
                      buildsignin(),

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