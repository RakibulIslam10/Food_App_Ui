import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 15),
      child: GNav(
        iconSize: 30,
        tabBackgroundColor: Colors.grey.shade300,
        padding: EdgeInsets.all(14),
        gap: 13,
        tabs: [
          GButton(
            icon: CupertinoIcons.house,
            text: 'Home',
          ),
          GButton(
            icon: CupertinoIcons.cart,
            text: 'Home',
          ),
          GButton(
            icon: CupertinoIcons.person_2,
            text: 'Home',
          ),
          GButton(
            icon: CupertinoIcons.bell,
            text: 'Home',
          ),

        ],),
    );
  }
}
