import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:projet2cp/home/home.dart';
import 'about_us/about_us.dart';
import 'about_us/contact_us.dart';
import 'home/profil.dart';
import 'home/map.dart';


void main() => runApp(MaterialApp(
  color: Color(0xff5097a4),
  home: Myapp(),
));


class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  Widget cont=SpecialitiesList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff5097a4) ,
      body: cont,
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        height: 50,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Color(0xff5097a4),
        items: <Widget>[
          Icon(Icons.favorite_border),
          Icon(Icons.home),
          Icon(Icons.contact_phone)
        ],
        onTap: (index){
          setState(() {
            if (index==0){cont = null;}
            if (index ==1){cont = SpecialitiesList();}
            if (index== 2){cont =About_us() ;}
          });
        },
      ),
    );
  }
}

