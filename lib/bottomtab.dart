import 'package:flutter/material.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar_item.dart';

class MyNavigation extends StatefulWidget {
  @override
  _MyNavigationState createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  int _currentIndex = 0;

  List<Widget> children = <Widget>[
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.amber,
    ),
    Text("two"),
    Text("three"),
    Text("four"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: children.elementAt(_currentIndex),
      bottomNavigationBar: CustomBottomNavigationBar(
        mainBgColor: Colors.red,
        backgroundColor: Colors.amber,
        items: [
          CustomBottomNavigationBarItem(
            icon: Icons.home,
            title: "Home",
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.ac_unit,
            title: "Directions",
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.settings,
            title: "Settings",
          ),
        ],
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
    );
  }
}
