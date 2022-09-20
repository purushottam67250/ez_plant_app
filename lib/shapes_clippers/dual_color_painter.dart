import 'package:flutter/material.dart';

class DualColorPainter extends CustomPainter {
  final Color color;

  DualColorPainter({
    required this.color,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final topPaint = Paint()..color = color.withAlpha(150);
    final bottomPaint = Paint()..color = color;
    final rectTop = Rect.fromLTWH(
      0,
      0,
      size.width,
      25,
    );

    final rectBottom = Rect.fromLTWH(
      0,
      25,
      size.width,
      25,
    );

    canvas.drawRect(
      rectTop,
      topPaint,
    );
    canvas.drawRect(rectBottom, bottomPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
