import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OderScreen extends StatelessWidget {
  const OderScreen({super.key, required this.imagepath});
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                    child: Icon(CupertinoIcons.back)),
                const Text(
                  "Chisse Pizza",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(
                  CupertinoIcons.heart_circle_fill,
                  color: Colors.red,
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Mizzed Pizza with beef, chilli and cheese"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 17,
                ),
                Text(
                  " 4.8",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ],
            ),
            SizedBox(height: 20),
            Image.network(imagepath,
              height: 270,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
                Text(
                  "\$10",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
                )
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Hot Pizza",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  width: 120,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(CupertinoIcons.add),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(CupertinoIcons.add),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Pizza is a dish "
              "of Italian origin consisting of a usually"
              " round, flat base of leavened wheat-based "
              "dough topped with tomatoes, cheese, and often various "
              "Pizza is a dish of Italian origin consisting of a usually round, flat  "
              "Italian origin consisting of a usually round, flat"
              "Italian origin consisting of"
              "Italian origin consisting of a usually round, flat a usually round, flat"
              ".....",
              style: TextStyle(fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400, spreadRadius: 0, blurRadius: 1)
          ],
          color: Colors.white,
        ),
        height: 100,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Total :",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "\$80",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Oder Now",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        backgroundColor: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
