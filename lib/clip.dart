import 'package:flutter/material.dart';

class CustomClipperDemo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 35);
    path.quadraticBezierTo(
        size.width / 6, size.height - 40, 2 * size.width / 6, size.height - 20);
    path.quadraticBezierTo(
        size.width / 2, size.height, 4 * size.width / 6, size.height - 20);
    path.quadraticBezierTo(
        5 * size.width / 6, size.height - 40, size.width, size.height - 35);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
