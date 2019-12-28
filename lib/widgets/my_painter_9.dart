import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyPainter9 extends CustomPainter {
  MyPainter9({this.color, this.strokeWidth});

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
      ..arcTo(
        Rect.fromLTWH(
          size.width * 1.5 / 10,
          size.height * 1 / 10,
          size.width * 7 / 10,
          size.height * 5 / 10,
        ),
        degToRad(30),
        degToRad(350),
        false,
      )
      ..lineTo(
        size.width * 5 / 10,
        size.height * 9 / 10,
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
