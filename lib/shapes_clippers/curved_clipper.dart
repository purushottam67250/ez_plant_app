import 'package:flutter/material.dart';

class CurvedClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.cubicTo(
      -size.width / 1.5,
      size.height * 2,
      size.width * 1.75,
      size.height / 2.75,
      size.width * 2,
      0,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

class CurvedGradientClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.cubicTo(
      -size.width / 1.5,
      size.height * 1.75,
      size.width * 4,
      -size.height / 1.5,
      -size.height * 2,
      -size.height * 0.25,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
