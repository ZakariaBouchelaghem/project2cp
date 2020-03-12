import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet2cp/home/doctors.dart';
import 'package:projet2cp/home/map.dart';
import 'doctors_data.dart';


class Main extends StatelessWidget {
  final int index_doctor;
  final int index_spc;
  Main({this.index_doctor,this.index_spc});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 20,
                child: Container(
                  color: Colors.grey.shade200,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child:Container(

                                height: MediaQuery.of(context).size.height /4+30 ,

                                decoration: BoxDecoration(
                                    color:Color(0xff5097a4),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(13),
                                      bottomRight: Radius.circular(13),
                                    ),

                                    image: DecorationImage(
                                      image: AssetImage("images/ph13.jpeg"),
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),),
                            Container(
                              margin: EdgeInsets.all(25),
                              child: IconButton(
                                  icon: Icon(Icons.keyboard_backspace,color:Colors.white,size: 35,),
                                  onPressed: () {
                                    Route route = MaterialPageRoute(builder: (context)=>DoctorsList());
                                    Navigator.pop(context,route);
                                  }),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 178,left: 150),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:Colors.blueGrey,
                                  image: DecorationImage(
                                    image: AssetImage("images/ph9.jpeg"),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(Specialitie().getDoctors(index_spc)[index_doctor].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:25,
                                color: Colors.black,
                              ),),
                            Text(Specialitie().getName2(index_spc),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff5097a4),
                              ),),
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        width: 60,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                right: 12,
                              ),
                              width: 80,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Color(0xff5097a4)),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/ph11.jpeg"),
                                  ),

                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 2,
                                      spreadRadius: 1,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12)

                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                right: 12,
                              ),
                              width: 80,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Color(0xff5097a4)),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/ph7.jpeg"),
                                  ),

                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 2,
                                      spreadRadius: 1,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12)

                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                right: 12,
                              ),
                              width: 80,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Color(0xff5097a4)),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/ph8.jpeg"),
                                  ),

                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 2,
                                      spreadRadius: 1,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12)

                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                right: 12,
                              ),
                              width: 80,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Color(0xff5097a4)),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/ph10.jpeg"),
                                  ),

                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 2,
                                      spreadRadius: 1,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12)

                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                right: 12,
                              ),
                              width: 80,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Color(0xff5097a4)),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/ph12.jpeg"),
                                  ),

                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 2,
                                      spreadRadius: 1,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12)

                              ),
                            ),

                          ],
                        ),
                      ),
                      Divider(color: Colors.blueGrey.shade200,),
                      ListTile(
                        leading: Icon(Icons.business_center,color: Color(0xff5097a4),),
                        title: Text("Experience"),
                        subtitle: Text(Specialitie().getDoctors(index_spc)[index_doctor].experience),
                      ),
                      Divider(color: Colors.blueGrey.shade200,),
                      ListTile(
                        leading: Icon(Icons.school,color: Color(0xff5097a4),),
                        title: Text("Graduation"),
                        subtitle: Text(Specialitie().getDoctors(index_spc)[index_doctor].grad),
                      ),
                      Divider(color: Colors.blueGrey.shade200,),
                      ListTile(
                        leading: Icon(Icons.access_time,color: Color(0xff5097a4),),
                        title: Text("Today timing\n"),
                        subtitle: Text("09:00 AM - 12:00 AM\n"
                            "01:00 PM - 3:00 PM\n"
                            "05:00 PM - 07:00 PM"),
                      ),

                      Divider(color: Colors.blueGrey.shade200,),
                      ListTile(
                        leading: Icon(Icons.email,color: Color(0xff5097a4),),

                        title: Text("E-mail"),
                        subtitle: Text("m.nasri@esi-sba.dz  "),
                      ),
                      Divider(color: Colors.blueGrey.shade200,),
                      ListTile(
                        leading: Icon(Icons.star,color: Color(0xff5097a4),),
                        title: Text("Recomended "),
                        subtitle: Text(Specialitie().getDoctors(index_spc)[index_doctor].name +" recomanded by 250 person "),
                      ),

                      Divider(color: Colors.blueGrey.shade200,),
                      ListTile(
                        leading: Icon(Icons.location_on,color: Color(0xff5097a4),),
                        title: Text(Specialitie().getDoctors(index_spc)[index_doctor].location+
                            "\n "),
                      ),
                      GestureDetector(
                        onTap: (){
                          Route route = MaterialPageRoute(builder: (context)=>HomePage());
                          Navigator.push(context, route);
                        },
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images/ph6.jpeg"),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.grey.shade200,
                  child: Row(
                      children: <Widget>[

                        Expanded(
                          flex: 6,
                          child: GestureDetector(

//                      focusColor: Colors.indigo,
                            child: Container(
                              margin: EdgeInsets.only(right: 12,top: 3,bottom: 3,left: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(color: Color(0xff5097a4)),
                              ),
                              height: 55,
//                        padding: EdgeInsets.all(0),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.phone,size: 30,),
                                  new Text("      Call Now   ",
                                    style: TextStyle(fontSize: 18,
                                        color: Color(0xff5097a4)),
                                    textAlign: TextAlign.left,),
                                ],
                              ),
                            ),

                          ),
                        ),


                        Expanded(
                          flex: 6,
                          child: GestureDetector(

//                      focusColor: Colors.indigo,


                            child: Container(
                              margin: EdgeInsets.only(right: 12,top: 3,bottom: 3,left: 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff5097a4),
                                border: Border.all(color: Colors.white),
                              ),
                              height: 55,
//                        padding: EdgeInsets.all(0),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.add,color: Colors.white,size:30,),
                                  new Text("    Recomended  ",
                                    style: TextStyle(fontSize: 18,
                                        color: Colors.white),
                                    textAlign: TextAlign.left,),
                                ],
                              ),
                            ),

                          ),
                        ),
                      ]
                  ),
                ),

              ),],)
      ),
    );

  }
}

