import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyPainter5 extends CustomPainter {
  MyPainter5({this.color, this.strokeWidth});

  Color color;
  double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = color
      ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 10.0)
      ..strokeWidth = strokeWidth;

    // Method to convert degree to radians
    num degToRad(num deg) => deg * (math.pi / 180.0);

    final Path path = Path()
      ..moveTo(
        size.width * 8 / 10,
        size.height * 1 / 10,
      )
      ..lineTo(
        size.width * 3 / 10,
        size.height * 1 / 10,
      )
      ..lineTo(
        size.width * 2 / 10,
        size.height * 5 / 10,
      )
      ..arcTo(
        Rect.fromLTWH(
          size.width * 1.5 / 10,
          size.height * 4 / 10,
          size.width * 7 / 10,
          size.height * 5 / 10,
        ),
        degToRad(230),
        degToRad(290),
        false,
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
