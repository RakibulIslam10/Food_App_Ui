import 'package:flutter/material.dart';

class SingUpBatton extends StatelessWidget {
  const SingUpBatton({super.key,required this.imagepath});
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: Colors.white)
        ),
        child:  Image.asset(imagepath,height: 40,)
    );
  }
}
