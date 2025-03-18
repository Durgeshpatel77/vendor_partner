import 'dart:math';

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:vendor_partner/Color/App_Colors.dart';
import 'package:vendor_partner/Home_Pages/Home_Page.dart';

import '../Icons/Icons.dart';

void main() => runApp(MaterialApp(home: NavigationPages()));

class NavigationPages extends StatefulWidget {
  @override
  _NavigationPagesState createState() => _NavigationPagesState();
}

class _NavigationPagesState extends State<NavigationPages> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  // List of pages for navigation
  final List<Widget> _pages = [
    HomePage(),
    Center(child: Text("Orders Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Notifications Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Profile Page", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: _pages[_page], // Display the selected page
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(
              color: ColorConst.white), // Unselected icons are white
        ),
        child: CurvedNavigationBar(
          key: _bottomNavigationKey,
          height: max(50.0, min(height * 0.08, 75.0)), // Keeps height between 50 and 75
          index: 0,

          items: <Widget>[
            IconConst.home,
            IconConst.store,
            IconConst.notification,
            IconConst.person,
          ],
          color: Colors.black, // Unselected icon background color
          buttonBackgroundColor:
              ColorConst.babyBlue, // Selected icon background color
          backgroundColor: ColorConst.white, // Background color behind nav bar
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
