import 'package:flutter/material.dart';
import 'package:myproject/My%20header.dart';
import 'package:myproject/MyList.dart';
import 'package:myproject/MyNavBar.dart';
import 'package:myproject/MyTabBar.dart';
import 'package:myproject/Mygrid.dart';
import 'package:myproject/Mytext_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const MyHeader(),
                  const MyTextField(),
                  const MyTabBar(),
                  const SizedBox(height: 8),
                  const MyGrid(),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Big Offer",
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListView.builder(

                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) => const MyList(),)
                ],
              ),
            ),
          ),
          bottomNavigationBar: const MyNavBar()),
    );
  }
}
