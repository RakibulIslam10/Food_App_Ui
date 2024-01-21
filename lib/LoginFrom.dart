import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/home_screen.dart';

class TextFeild extends StatefulWidget {
  const TextFeild({super.key});

  @override
  State<TextFeild> createState() => _TextFeildState();
}

class _TextFeildState extends State<TextFeild> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextFormField(
              controller: usernameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter your username";
                }
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400)),
                  prefixIcon: Icon(CupertinoIcons.person),
                  suffixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(
                      CupertinoIcons.person_crop_circle,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  hintText: "Username",
                  hintStyle: const TextStyle(color: Colors.grey)),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextFormField(
              controller: passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter your password";
                }
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400)),
                  prefixIcon: Icon(CupertinoIcons.lock),
                  suffixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(
                      Icons.visibility_outlined,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Colors.grey)),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      foregroundColor: Colors.black87),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    }
                  },
                  child: const Text(
                    "Sing Up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
