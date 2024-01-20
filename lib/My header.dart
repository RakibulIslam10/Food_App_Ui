import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("images/me.png"),
          ),
          const Text(
            "Home",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Image.asset("images/img.png")
        ],
      ),
    );
  }
}
