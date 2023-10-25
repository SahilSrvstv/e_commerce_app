import 'package:e_commerce_app/screens/screen1.dart';
import 'package:e_commerce_app/screens/screen2.dart';
import 'package:e_commerce_app/screens/screen3.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  List Screens = [
    Screen1(),
    Screen2(),
    Screen3(),
  ];
  int _selectedIndex= 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black,
        backgroundColor: Colors.transparent,
        index: _selectedIndex,
        items: const [
          Icon(Icons.account_circle,color: Colors.white,),
          Icon(Icons.home,color: Colors.white,),
          Icon(Icons.shopping_cart_outlined,color: Colors.white,),
        ],
        onTap: (index){
          setState(() {
            _selectedIndex = index ;
          });
        },
      ),
      body: Screens[_selectedIndex],
    );
  }
}
