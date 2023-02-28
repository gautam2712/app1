import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'cart_screen.dart';
import 'home_screen.dart';

class Screens extends StatefulWidget {
  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const CartScreen(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            child: GNav(
              iconSize: 25,
              tabBackgroundColor: Colors.grey,
              activeColor: Colors.black
              ,
              gap: 8,
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 13),
              tabs:[
                const GButton(icon:LineIcons.home, text: 'Home'),
                const GButton(icon:LineIcons.shoppingBag, text: 'Cart'),
                const GButton(icon:LineIcons.heart, text: 'Favriout'),
                const GButton(icon:LineIcons.user, text: 'Account'),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index){
                setState(() {
                  _selectedIndex = index;
                });
              } ,
              ),
          ),
        ),
      ),
      );
   
  }
}
