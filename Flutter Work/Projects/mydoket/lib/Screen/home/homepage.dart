/*import 'package:flutter/material.dart';
import 'package:mydoket/Screen/drw/drawer.dart';
import 'package:mydoket/Screen/drw/drawer.dart';
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        drawer: drawermain(),
        ),
      );
  }
}

*/


import 'package:flutter/material.dart';
import 'package:mydoket/Screen/drw/home.dart';
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height*.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('asset/home/curve.png',),
                )
            ),
          ),


          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 35,right: 35,bottom: 5,top: 25),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left:15,bottom: 120),
                    height: 55,
                  ),
                  Text("Welcome".toUpperCase(),style: TextStyle(
                      fontWeight: FontWeight.w900,fontSize: 30,color: Colors.deepPurple
                  ),
                  ),
                  SizedBox(height: 15,),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 40,
                      crossAxisSpacing: 80,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pop();
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>home()));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 12),
                                Image.asset('asset/home/home.jpg',
                                  height: 80,),
                                Text("Home Screen",style: TextStyle(fontWeight: FontWeight.bold,fontSize:
                                16,color: Colors.indigo,
                                ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 12,),
                              Image.asset('asset/home/services.png',
                                height: 80,),
                              Text("Services",style: TextStyle(fontWeight: FontWeight.bold,fontSize:
                              16,color: Colors.indigo),),
                            ],
                          ),
                        ),

                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 12,),
                              Image.asset('asset/home/aboutus1.png',
                                height: 80,),
                              Text("About",style: TextStyle(fontWeight: FontWeight.bold,fontSize:
                              16,color: Colors.indigo),),
                            ],
                          ),
                        ),

                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 12,),
                              Image.asset('asset/home/contact us.png',
                                height: 80,),
                              Text("Contact",style: TextStyle(fontWeight: FontWeight.bold,fontSize:
                              16,color: Colors.indigo),),
                            ],
                          ),
                        ),

                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 12,),
                              Image.asset('asset/home/support.png',
                                height: 80,),
                              Text("Support",style: TextStyle(fontWeight: FontWeight.bold,fontSize:
                              16,color: Colors.indigo),),
                            ],
                          ),
                        ),

                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 12,),
                              Image.asset('asset/home/admin.png',
                                height: 80,),
                              Text("Testimonials",style: TextStyle(fontWeight: FontWeight.bold,fontSize:
                              16,color: Colors.indigo),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}


