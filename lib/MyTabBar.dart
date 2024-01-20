import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(10.0),
      child: TabBar(
        isScrollable: true,
        unselectedLabelColor: Colors.black54,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: Colors.red),
        tabs: [
          Tab(
            text: 'Spicy Food ',
          ),
          Tab(
            text: 'Burger',
          ),
          Tab(
            text: 'Pizza',
          ),
          Tab(
            text: 'Chicken',
          ),
          Tab(
            text: 'Blueberries',
          ),
          Tab(
            text: 'Spinach',
          ),
        ],
        labelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
        ),
      ),
    );
  }
}
