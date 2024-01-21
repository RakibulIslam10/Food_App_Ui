import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/LoginFrom.dart';
import 'package:myproject/Mygrid.dart';
import 'package:myproject/Oder_page_view.dart';
import 'package:myproject/Singupb.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: myheight,
            width: mywidth,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'images/rr.jpg',
                    ),
                    fit: BoxFit.cover)),
            child: Container(
              height: myheight,
              width: mywidth,
              color: Colors.black54,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " Food",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          " App",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    ),TextFeild(),
                    const SizedBox(
                      height: 60),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 2),
                          ),
                          const SizedBox(
                            width: 10),
                          const Text(
                            "Or Continue",style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.shade300,
                              thickness: 2),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 60),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SingUpBatton(imagepath: "images/g.png"),
                        SizedBox(width: 25),
                        SingUpBatton(imagepath: "images/i.png"),
                      ],
                    ),
                    const SizedBox(height: 60),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Not a member?",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        SizedBox(width: 4),
                        Text(
                          "Register now?",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
