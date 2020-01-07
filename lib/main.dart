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
                height: 280,
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
                  Text("HEALTH,                     89%", 
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
        ],
      ),
      bottomNavigationBar: AnimatedBottomBar(
        barItems: widget.barItems,
        animationDuration: const Duration(milliseconds: 500,)
      ),
    );
  }
}