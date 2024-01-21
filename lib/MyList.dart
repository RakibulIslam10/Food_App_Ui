import 'package:flutter/material.dart';
import 'package:myproject/Oder_page_view.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OderScreen(
                  imagepath:
                      "https://static.vecteezy.com/system/resources/previews/022/598/881/non_2x/tasty-beef-burger-png.png",
                ),
              ));
        },
        child: Container(
          height: 115,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black54.withOpacity(0.1), blurRadius: 10)
              ]),
          child: Row(
            children: [
              Row(
                children: [
                  Image.network(
                    "https://static.vecteezy.com/system/resources/previews/022/598/881/non_2x/tasty-beef-burger-png.png",
                    height: 95,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sichuan Hotpot",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Spicy dish for special",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.red,
                          size: 16,
                        ),
                        Text(
                          " 50min",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        Text(
                          " 4.8",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        Text(
                          "            \$ 17 on 50℅ off",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red[300],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
