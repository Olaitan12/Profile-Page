import 'package:flutter/material.dart';

import 'animated_bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile",
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {

  final List<BarItem> barItems = [
    BarItem(
      text: "Home", 
      iconData: Icons.home, 
      color: Color(0xff6b2c57)),
    BarItem(
      text: "Dog's", 
      iconData: Icons.favorite, 
      color: Color(0xff6b2c57)),
    BarItem(
      text: "Feed", 
      iconData: Icons.feedback, 
      color: Color(0xff6b2c57)),
    BarItem(
      text: "Vet", 
      iconData: Icons.add, 
      color: Color(0xff6b2c57)),
  ];

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  int selectedBar =0;
  
  Color gradientStart = Color(0xff6b2c57);

  Color gradientEnd = Color(0xff6b2c57);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: new LinearGradient(colors: [gradientStart,gradientEnd],),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(60),bottomLeft: Radius.circular(60)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text("     Mary Jane", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "AbrilFatface"
                    )),
                    Text("         Veterinarian, GCSE degree", style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Colors.white38,
                      fontFamily: "AbrilFatface",
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                  Text("   HEALTH                     89%", 
                    style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: "AbrilFatface",
                  ),),
                  Text("Avticity                    70%", 
                    style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: "AbrilFatface",
                  ),),
            ],
          ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0,bottom: 60),
            child: Text(
              "Last Appoinments", 
              style: TextStyle(
                fontFamily: "AbrilFatface",
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 5.8, 20.0, 5.8),
                  height: 150.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    color: Color(0xfff6f4ff),
                  ),
                  child: Center(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("                                        Injections", style: TextStyle(fontFamily: "AbrilFatface", fontSize: 15)),
                        Text("12.08.2019", style: TextStyle(fontFamily: "AbrilFatface", fontSize: 10.0, color: Color(0xffe1dfea))),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 20),
                  child: Stack(
                      children: <Widget>[
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20), topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                          color: Color(0xff7874f8),
                          ),
                          child: Icon(
                            Icons.input
                          ),
                        ),
                      ],
                    ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 450.8, 20.0, 5.8),
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20), topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                    color: Color(0xfffef3f1),
                  ),
                  child: Center(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("                                          Control Visit", style: TextStyle(fontFamily: "AbrilFatface", fontSize: 15)),
                        Text("12.06.2019", style: TextStyle(fontFamily: "AbrilFatface", fontSize: 10.0, color: Color(0xffe1dfea))),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 450.0, left: 20),
                  child: Stack(
                      children: <Widget>[
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20), topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                          color: Color(0xfffe5c17),
                          ),
                          child: Icon(
                            Icons.airline_seat_legroom_extra
                          ),
                        ),
                      ],
                    ),
                ),
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(20, 750, 20, 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                  color: Color(0xffffb53f),
                ),
                child: Center(
                  child: Text(
                    "Set up an appointment",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "AbrilFatface",
                      fontWeight: FontWeight.w200
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: AnimatedBottomBar(
        barItems: widget.barItems,
        animationDuration: const Duration(milliseconds: 500,)
      ),
    );
  }
}