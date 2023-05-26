import 'package:flutter/material.dart';
import 'item.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    createItems();
    final list = Container(
      margin: const EdgeInsets.only(top: 120),
      height: 500,
      child: ListView(
        children: items,
      ),
    );
    return list;
  }
}

List<Widget> items = [];

void createItems() {
  for (int i = 0; i < 15; i++) {
    items.add(ItemBody(
        imagePath: 'assets/forest.jpg',
        experience: '$i years',
        name: 'Oscar Roncancio'));
  }
}
