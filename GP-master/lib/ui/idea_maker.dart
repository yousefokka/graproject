import 'package:flutter/material.dart';
import 'package:add/utilities/constants.dart';

import 'addjob.dart';


void main(){
  runApp(MaterialApp(
    home:  Idea_Maker(),
  ));
}
class  Idea_Maker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  _Idea_Maker();
  }
}
class Gender {
  String gender;

  Gender(this.gender);

  static List<Gender> getGender() {
    return <Gender>[Gender("MAle"), Gender("Female"), Gender("Not prefer")];
  }
}
class Manage {
  String man;

  Manage(this.man);

  static List<Manage> getManage() {
    return <Manage>[Manage("fully"), Manage("semi"), Manage("Non")];
  }
}

class _Idea_Maker extends State<Idea_Maker> {
  List<Gender> _get_Gender = Gender.getGender();
  List<DropdownMenuItem<Gender>> _DropdownMenuItem;
  Gender _Selected_Gender;

  List<Manage> _get_Manage = Manage.getManage();
  List<DropdownMenuItem<Manage>> _DropdownMenuItem_Manage;
  Manage _Selected_Manage;

  @override
  //ده الي هيتحطلي من البدايه
  void initState() {
    _DropdownMenuItem =
        buildDropdownMenuIte(_get_Gender).cast<DropdownMenuItem<Gender>>();

    _Selected_Gender = _DropdownMenuItem[0].value;

    _DropdownMenuItem_Manage =
        buildDropdownMenuItem(_get_Manage).cast<DropdownMenuItem<Manage>>();
    _Selected_Manage = _DropdownMenuItem_Manage[0].value;
  }

  //
  List<DropdownMenuItem<Gender>> buildDropdownMenuIte(List _Clicked_Gender) {
    List<DropdownMenuItem<Gender>> item = List();

    for (Gender x in _Clicked_Gender) {
      item.add(DropdownMenuItem(
        value: x,
        child: Text(x.gender),
      ));
    }
    return item;
  }

  List<DropdownMenuItem<Manage>> buildDropdownMenuItem(List _Clicked_Manage) {
    List<DropdownMenuItem<Manage>> manage = List();

    for (Manage m in _Clicked_Manage) {
      manage.add(DropdownMenuItem(
        value: m,
        child: Text(m.man),
      ));
    }
    return manage;
  }

  onChanging1(Gender selected) {
    setState(() {
      _Selected_Gender = selected;
    });
  }

  onChanging2(Manage select) {
    setState(() {
      _Selected_Manage = select;
    });
  }


  Widget _firstname() {
    return Container(
      // alignment: Alignment.topCenter,
      // padding: EdgeInsets.only(bottom:10.0),
      decoration: kBoxDecorationStyle,
      height: MediaQuery.of(context).size.height / 13,//height: 50.0,
      width: 150.0,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.email,
            color: Color(0xFF8b8b8b),
          ),
          // labelText: "First Name",
          // labelStyle: kLabelStyle,
          hintText: 'First Name',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _lastname() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: MediaQuery.of(context).size.height / 13,//height: 50.0,
      width: 153.0,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.person,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Last Name",
          //labelStyle: kLabelStyle,
          hintText: 'Last Name',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _Email() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.lock,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "E-mail",
          //labelStyle: kLabelStyle,
          hintText: "E-mail",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _Pass() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.lock,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Password",
          //labelStyle: kLabelStyle,
          hintText: "Password",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _Phone() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.phone_forwarded,
            color: Color(0xFF8b8b8b),
          ),
          // labelText: "Phone",
          // labelStyle: kLabelStyle,
          hintText: "Phone",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _address() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.home,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Address",
          //labelStyle: kLabelStyle,
          hintText: "Address",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _Gender() {
    return DropdownButtonFormField(
      hint: Text("hello"),
      value: _Selected_Gender,
      items: _DropdownMenuItem,
      onChanged: onChanging1,
      decoration: new InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              width: 2.0,
            )),
        //hoverColor: Colors.orange,
        enabledBorder: OutlineInputBorder(
            gapPadding: 21.0, borderRadius: BorderRadius.circular(30.0)),
        hintText: 'Gender',
        //focusColor: Colors.orange,
        labelText: "Gender",
        // labelStyle: ,
        //  hintStyle: kHintTextStyle,
        //icon: new Icon(Icons.person)
      ),
    );
  }
  Widget _Manage() {
    return DropdownButtonFormField(
      hint: Text("hello"),
      value: _Selected_Manage,
      items: _DropdownMenuItem_Manage,
      onChanged: onChanging2,
      decoration: new InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              width: 2.0,
            )),
        //hoverColor: Colors.orange,
        enabledBorder: OutlineInputBorder(
            gapPadding: 21.0, borderRadius: BorderRadius.circular(30.0)),
        hintText: 'Managment',
        //focusColor: Colors.orange,
        labelText: "Choose Tybe Of Managment",
        // labelStyle: ,
        //  hintStyle: kHintTextStyle,
        //icon: new Icon(Icons.person)
      ),
    );
  }

  Widget _categoey() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.category,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "categoey",
          //labelStyle: kLabelStyle,
          hintText: "categoey",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  /*Widget _Tybe() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      // width: 150.0,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.category,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Tybe",
          //labelStyle: kLabelStyle,
          hintText: "Tybe",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }*/

  Widget _Experince() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 50.0,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.description,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Experince",
          //labelStyle: kLabelStyle,
          hintText:  "Experince",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _Qualification() {
    return Container(
      alignment: Alignment.topCenter,
      decoration: kBoxDecorationStyle,
      height: 100.0,

      child: TextField(      maxLines: 10,

        keyboardType: TextInputType.multiline,
        style: TextStyle(

          color: Color(0xFF0a2f52),
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.favorite_border,
            color: Color(0xFF8b8b8b),
          ),
          //labelText: "Qualification",
          // labelStyle: kLabelStyle,
          hintText:  "Qualification",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _build_Save() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: 200.0,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: ()  {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => AddJobs()),
          );
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color(0xFF0a2f52),
        child: Text(
          'Save',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // yellow backgroundColor: Color(0xffF7DC6F),
      backgroundColor: Color(0xffEC7063),
      body: ListView(
        padding: EdgeInsets.only(top: 0),
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 150.0),
                child:  ClipPath(
                  clipper: WaveClipper2(),
                  child: Container(
                    padding: EdgeInsets.only(),
                    width: double.infinity,
                    height: 485,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff5DADE2),
                            Color(0xffF2F3F4  ),
                          ],
                        )),
                  ),
                ),
              ),
              /*  Container(
               padding: EdgeInsets.only(top: 450),
               child:  ClipPath(
                 clipper: WaveClipper3(),
                 child: Container(

                   width: double.infinity,
                   height: 350,
                   decoration: BoxDecoration(
                       gradient: LinearGradient(colors: [
                         Color(0xffF1C40F),
                         Color(0xffF1C40F),
                         Color(0xffF1C40F),
                         Color(0xff85C1E9)
                       ])),
                 ),
               ),
             ),*/
              ClipPath(
                clipper: WaveClipper1(),
                child: Container(

                  width:double.infinity,
                  height:350,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF0a2f52),
                          Color(0xff2E86C1),
                        ],
                      )),
                ),
              ),
              Stack(
/*
          decoration: BoxDecoration(

            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF337db1),
                Color(0xFF0a2f52),
                Color(0xFF0a2f52),
                Color(0xFF0a2f52),
              ],
              stops: [
                0.1,
                0.3,
                0.5,
                0.7
              ],
            ),
          ),*/
                children: <Widget>[
                  SingleChildScrollView(
                    padding: EdgeInsets.only(top: 0.0,bottom: 0.0),

                    physics: AlwaysScrollableScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        // Padding(padding: EdgeInsets.all(10.0)),

                        Container(
                          //Controlling the white place Shape
                          height: 650.0,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(75.0),
                              bottomRight: Radius.circular(75.0),
                              // bottomLeft: Radius.circular(75.0),
                              //   topRight: Radius.circular(75.0)
                            ),
                          ),
                          padding: EdgeInsets.all(20.0),

                          //Stack That Controlling Data In Container
                          child: Stack(
                            //primary: false,
                            //padding: EdgeInsets.only(left: 25.0, right: 20.0),
                            children: <Widget>[
                              ListView(
                                children: <Widget>[
                                  Container(
                                    height: MediaQuery.of(context).size.height * 1.7,//1000.0,
                                    padding: EdgeInsets.only(top: 20.0),
                                    alignment: Alignment.topCenter,
                                    child: Column(
                                      children: <Widget>[
                                        // Padding(padding: EdgeInsets.only(top: 2.0)),

                                        Row(
                                          children: <Widget>[
                                            _firstname(),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            _lastname(),
                                          ],
                                        ),

                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        _Email(),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        _Pass(),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        _Phone(),

                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        _address(),

                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        _categoey(),

                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        _Gender(),

                                        SizedBox(
                                          height: 20.0,
                                        ),

                                        _Manage(),

                                        SizedBox(
                                          height: 20.0,
                                        ),

                                        _Experince(),

                                        SizedBox(
                                          height: 20.0,
                                        ),

                                        _Qualification(),

                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        _build_Save(),
                                        SizedBox(
                                          height: 20.0,
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}
class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    //امشي من البدايه علي الشمال لحد طول الكونتينر ونقص من طوله 50
    //ده كدا خط مستقيم علي الشمال
    path.lineTo(0.0, size.height );
//دلوقتي انا واقف علي الشمال عن طول الكونتينر - 50 وهعمل حاجتين
    // وهتحر من نقطتي الي نقطه الموجه الي هيا كنترول بوينت وهتجرك بعدين للاند بوينت الي هيا في نص الموجه لما تزل

    var firstEndPoint = Offset(size.width /2-20, size.height-60);



    var firstControlPoint = Offset(size.width/2-150, size.height -60);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);



    var secondEndPoint = Offset(
        size.width,//كدا معناها ان كمل بقي خلاص لحد اخر العرض
        size.height/2);//كده معناه ان الطول نقص منه 2






    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

/*class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0.0, size.height/2+30);

    var firstEndPoint = Offset(size.width/2-20, size.height /2+10);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}*/

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height );

    var firstEndPoint = Offset(size.width /2-20, size.height );
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);


    var secondEndPoint = Offset(size.width, size.height - 200);
    var secondControlPoint = Offset(size.width /2-20, size.height - 120);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
