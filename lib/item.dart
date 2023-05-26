import 'package:flutter/material.dart';

import 'item_button.dart';

class ItemBody extends StatelessWidget {
  final String name;
  final String experience;
  final String imagePath;
  const ItemBody(
      {super.key, this.experience = '', this.name = '', this.imagePath = ''});

  @override
  Widget build(BuildContext context) {
    final avatarIcon = Container(
      margin: const EdgeInsets.only(left: 20),
      child: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(imagePath),
      ),
    );

    final experienceText = Container(
      margin: const EdgeInsets.only(left: 10),
      child: Text(
        'Experience: $experience',
        style: TextStyle(fontSize: 15, color: Colors.grey[400]),
        textAlign: TextAlign.left,
      ),
    );

    final nameText = Container(
      margin: const EdgeInsets.only(left: 10, bottom: 5),
      child: Text(
        name,
        style: TextStyle(
            fontSize: 15, color: Colors.grey[800], fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );

    final borderLine = Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromARGB(255, 216, 216, 216)),
        ),
      ),
    );

    Widget joiningParts() {
      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              avatarIcon,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  nameText,
                  experienceText,
                ],
              ),
              const ItemButton(),
            ],
          ),
          borderLine,
        ],
      );
    }

    return joiningParts();
  }
}
