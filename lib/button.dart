import 'package:flutter/material.dart';

class ButtonAppBar extends StatelessWidget {
  final double height;
  const ButtonAppBar({super.key, this.height = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: height / 4),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
        color: Colors.white,
      ),
    );
  }
}
