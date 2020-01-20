import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyPainter6 extends CustomPainter {
  MyPainter6({this.color, this.strokeWidth});

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
      ..moveTo(
        size.width * 5 / 10,
        size.height * 1 / 10,
      )
      ..lineTo(
        size.width * 2.5 / 10,
        size.height * 5 / 10,
      )
      ..arcTo(
        Rect.fromLTWH(
          size.width * 2 / 10,
          size.height * 4 / 10,
          size.width * 6 / 10,
          size.height * 5 / 10,
        ),
        degToRad(200),
        degToRad(360),
        false,
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
