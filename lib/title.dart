import 'package:flutter/material.dart';

class TitleAppBar extends StatelessWidget {
  final double height;
  const TitleAppBar({super.key, this.height = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      margin: EdgeInsets.only(top: (height / 2) - 20),
      child: const Text(
        "DESIGNERS",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
