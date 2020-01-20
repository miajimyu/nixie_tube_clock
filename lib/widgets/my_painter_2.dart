import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyPainter2 extends CustomPainter {
  MyPainter2({this.color, this.strokeWidth});

  Color color;
  double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = color
      ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 10)
      ..strokeWidth = strokeWidth;

    // Method to convert degree to radians
    double degToRad(double deg) => deg * (math.pi / 180.0);

    final path = Path()
      ..arcTo(
        Rect.fromLTWH(
          size.width * 2 / 10,
          size.height * 1 / 10,
          size.width * 6 / 10,
          size.height * 4 / 10,
        ),
        degToRad(180),
        degToRad(210),
        true,
      )
      ..quadraticBezierTo(
        size.width * 2 / 10,
        size.height * 7 / 10,
        size.width * 2 / 10,
        size.height * 9 / 10,
      )
      ..lineTo(
        size.width * 8 / 10,
        size.height * 9 / 10,
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
