import 'package:mydoket/Screen/drw/Logout.dart';
import 'package:mydoket/Screen/drw/about.dart';
import 'package:mydoket/Screen/drw/profile.dart';
import 'package:mydoket/Screen/drw/settings.dart';
import 'package:flutter/material.dart';

class drawermain extends StatelessWidget {
  const drawermain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children:<Widget> [
                  Container(
                    width: 100,height: 100,
                    margin: EdgeInsets.only(top: 30,bottom: 10,),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage('https://mydoket.com/assets/img/test1.jpg',),
                        fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Text('SHREENIVAS RAO',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                  Text('Expert',style: TextStyle(fontSize: 18,color: Colors.amberAccent),),
                  Text('admin@mydoket.com',style: TextStyle(color: Colors.amberAccent),),
                ],
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.person_pin_outlined,color: Colors.blueAccent,),
            title: Text('Profile',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueAccent),),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => profile()));
            },
          ),

          ListTile(
            leading: Icon(Icons.settings_applications,color: Colors.blueAccent,),
            title: Text('setting',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueAccent),),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => setting()));
            },
          ),

          ListTile(
            leading: Icon(Icons.arrow_circle_left_outlined,color: Colors.blueAccent,),
            title: Text('Logout',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueAccent),),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => logout()));
            },
          ),

          ListTile(
            leading: Icon(Icons.arrow_circle_left_outlined,color: Colors.blueAccent,),
            title: Text('About Us',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueAccent),),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => about()));
            },
          ),

        ],
      ),
    );
  }
}
