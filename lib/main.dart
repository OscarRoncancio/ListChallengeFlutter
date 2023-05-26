import 'package:flutter/material.dart';
import 'package:list_challenge_flutter/button.dart';
import 'package:list_challenge_flutter/item_list.dart';
import 'package:list_challenge_flutter/title.dart';

import 'clip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            clip(120),
            const ItemList(),
          ],
        ),
      ),
    );
  }
}

Widget clip(double height) {
  return Stack(
    children: [
      ClipPath(
        clipper: CustomClipperDemo(),
        child: Container(
          height: height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/forest.jpg"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      TitleAppBar(height: height),
      ButtonAppBar(height: height),
    ],
  );
}
