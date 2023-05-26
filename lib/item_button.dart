import 'package:flutter/material.dart';

class ItemButton extends StatefulWidget {
  const ItemButton({super.key});

  @override
  State<ItemButton> createState() => _ItemButtonState();
}

class _ItemButtonState extends State<ItemButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 100),
      child: FloatingActionButton(
        elevation: 0,
        mini: true,
        shape: const CircleBorder(),
        backgroundColor: isPressed ? Colors.grey[300] : Colors.red,
        onPressed: () {
          setState(
            () {
              isPressed = !isPressed;
            },
          );
        },
        child: Icon(
          Icons.mail,
          color: isPressed ? Colors.grey[700] : Colors.white,
        ),
      ),
    );
  }
}
