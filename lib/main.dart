import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/My%20header.dart';
import 'package:myproject/MyList.dart';
import 'package:myproject/MyNavBar.dart';
import 'package:myproject/MyTabBar.dart';
import 'package:myproject/Mygrid.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const MyHeader(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.search),
                          label: Text("Search"),
                          border: OutlineInputBorder()),
                    ),
                  ),
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
                  const MyList(),
                  const MyList(),
                  const MyList(),
                  const MyList(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: const MyNavBar()),
    );
  }
}
