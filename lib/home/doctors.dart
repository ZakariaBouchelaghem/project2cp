import 'package:flutter/material.dart';
import 'package:projet2cp/home/profil.dart';
import 'doctors_data.dart';
import 'home.dart';
import 'doctors.dart';


class DoctorsList extends StatefulWidget {
  int index;
  DoctorsList({Key key, @required this.index}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DoctorsListState(i : index);
  }
}

class _DoctorsListState extends State<DoctorsList> {
  final int i ;
  final TextStyle dropdownMenuItem =
  TextStyle(color: Colors.black, fontSize: 18);

  final primary = Color(0xff5097a4);//0xff696b9e
  final secondary = Color(0xfff29a94);

   String specialitieName;
   List<Doctor> data ;
  final TextEditingController _searchDoctor = new TextEditingController();
  String _searchText = "";

  //Monitor the instant change in the search text
  _DoctorsListState({Key key, this.i}) {

     specialitieName = Specialitie().getName2(i);
     data = Specialitie().getDoctors(i);
    _searchDoctor.addListener(() {
      if (_searchDoctor.text.isEmpty) {
        setState(() {
          _searchText = "";
        });
      } else {
        setState(() {
          _searchText = _searchDoctor.text;
        });
      }
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              //build a list of doctors
              Container(
                padding: EdgeInsets.only(top: 145),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      //In order to filter the list of doctors by search text
                      return _searchText == null || _searchText == ""
                          ? buildCard(context, index)
                          : data[index]
                          .name
                          .toLowerCase()
                          .contains(_searchText.toLowerCase()) ||
                          data[index]
                              .wilaya
                              .toLowerCase()
                              .contains(_searchText.toLowerCase())
                          ? buildCard(context, index)
                          : Container(); //buildCard(context, index);
                    }),
              ),
              //build the shape of appBar

              Container(

                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        // go to Specialitie page
                        onPressed: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => SpecialitiesList());
                          Navigator.pop(context, route);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        specialitieName,
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                ),
              ),

              //build the decoration of search card
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 110,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: TextField(
                          controller: _searchDoctor,
                          cursorColor: Theme.of(context).primaryColor,
                          style: dropdownMenuItem,
                          decoration: InputDecoration(
                              hintText: "Search a Doctor ",
                              hintStyle: TextStyle(
                                  color: Colors.black38, fontSize: 16),
                              prefixIcon: Material(
                                elevation: 0.0,
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                child: Icon(Icons.search),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 13)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Route route = MaterialPageRoute(builder: (context)=>Main(index_doctor : index, index_spc : i ));
        Navigator.push(context, route);
      }, // go to the doctors profile
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white70,
        ),
        width: double.infinity,
        height: 140,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //photo of doctor
            Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(right: 10, top: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 3, color: secondary),
                image: DecorationImage(
                    image: AssetImage(data[index].photo), fit: BoxFit.cover),
              ),
            ),
            //doctor information
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data[index].name,
                    style: TextStyle(
                        color: Color(0xff696b9e),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.school,
                        color: secondary,
                        size: 20,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(data[index].grad,
                          style: TextStyle(
                              color: Color(0xff696b9e), fontSize: 13, letterSpacing: .3)),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      Text("${data[index].experience} experience ",
                          style: TextStyle(
                              color: Color(0xff696b9e), fontSize: 13, letterSpacing: .3)),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: secondary,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(data[index].wilaya,
                          style: TextStyle(
                              color: Color(0xff696b9e), fontSize: 13, letterSpacing: .3)),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      Text("${data[index].location} ",
                          style: TextStyle(
                              color: Color(0xff696b9e), fontSize: 13, letterSpacing: .3)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
