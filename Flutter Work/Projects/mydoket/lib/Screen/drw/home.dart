import 'package:flutter/material.dart';
import 'package:mydoket/Screen/drw/homeradio.dart';

class home extends StatelessWidget {

  const home({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        backgroundColor: Color(0xffeeeeee), //background color
        appBar: AppBar(
          title: Text('Ashutosh || Wallet \u{20B9} 0.00',
            style: TextStyle(
              fontSize: 17,
            ),
          ),


          /*Image.asset('asset/ashutosh.png',
          height: 45,width: 45,),*/ //if you have to add image side of Name



          actions: [
            new Stack(
              children: [
                new IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.notifications)
                )
              ],
            ),
          /*  new Stack(
              children: [
                new IconButton(onPressed :(){}, icon: Icon(Icons.person))
              ],
            )*/
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                color: Colors.indigo,
                child: Center(
                  child: Column(
                    children:<Widget> [
                      Container(
                        width: 100,height: 100,
                        margin: EdgeInsets.only(top: 30,bottom: 10,),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('asset/ashutosh.png',),
                              fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Ashutosh Mishra',
                        style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ListTile(
                leading: Icon(Icons.home_sharp,color: Colors.black,),
                title: Text('Home',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueAccent),),
                onTap: (){
                 /* Navigator.of(context).pop();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => profile()));*/
                },
              ),

              ListTile(
                leading: Icon(Icons.work_history,color: Colors.black,),
                title: Text('Work Details',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueAccent),),
                onTap: (){
                /*  Navigator.of(context).pop();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => setting()));*/
                },
              ),

              ListTile(
                leading: Icon(Icons.details,color: Colors.black,),
                title: Text('Quotation Details',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueAccent),),
                onTap: (){
                /*  Navigator.of(context).pop();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => logout())); */
                },
              ),

              ListTile(
                leading: Icon(Icons.wallet,color: Colors.black,),
                title: Text('Wallet History',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueAccent),),
                onTap: (){
               /*   Navigator.of(context).pop();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => about())); */
                },
              ),

              ListTile(
                leading: Icon(Icons.image,color: Colors.black,),
                title: Text('My Documents',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueAccent),),
                onTap: (){
                  /*   Navigator.of(context).pop();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => about())); */
                },
              ),

              ListTile(
                leading: Icon(Icons.logout,color: Colors.black,),
                title: Text('Logout',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueAccent),),
                onTap: (){
                  /*   Navigator.of(context).pop();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => about())); */
                },
              ),
            ],
          ),
        ),

        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                radios(), //infinite pixels
              ],
            ),
          ),
        )
      ),
    );
  }

}
