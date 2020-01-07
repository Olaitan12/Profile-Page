import 'package:flutter/material.dart';

class AnimatedBottomBar extends StatefulWidget {
  final List<BarItem> barItems;
  final Duration animationDuration;

  AnimatedBottomBar(
      {this.barItems,
      this.animationDuration = const Duration(milliseconds: 500)});

  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> with TickerProviderStateMixin{

  int selectedBarIndex = 0;

  @override 
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      child: Padding(
        padding: const EdgeInsets.only(
            bottom: 32.0, 
            top: 18.0, 
            left: 18.0, 
            right: 18.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _buildBarItems(),
        ),
      ),
    );
  }

  List<Widget> _buildBarItems() {
    List<Widget> _barItems = List();
    for (int i = 0; i<widget.barItems.length;i++) {
      bool isSelected = selectedBarIndex ==i;
      BarItem item = widget.barItems[i];
      _barItems.add(InkWell(
        splashColor: Color(0xff6b2c57),
        onTap: () {
          setState(() {
            selectedBarIndex = i;
          });
        },
          child: AnimatedContainer(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
            duration: widget.animationDuration,
            decoration: BoxDecoration(
              color: isSelected ? item.color.withOpacity(0.40) : Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          child: Row(
            children: <Widget>[
              Icon(
                item.iconData, 
                size: 32.0,
                color: isSelected ? item.color : Color(0xff6b2c57),),
              SizedBox(
                width: 10.0
                ),
                AnimatedSize(
                  duration: widget.animationDuration,
                  curve: Curves.easeInOut,
                  vsync: this,
                ),
              Text(
                isSelected ? item.text : "",
              style: TextStyle(
                color: item.color,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: "AbrilFatface",
              ),)
            ],
        ),
          ),
      ));
    }
    return _barItems;
  }
}

class BarItem {
  String text;
  IconData iconData;
  Color color;

  BarItem({this.text, this.iconData, this.color});
}
