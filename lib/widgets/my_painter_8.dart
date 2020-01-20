import 'package:flutter/material.dart';

class MyPainter8 extends CustomPainter {
  MyPainter8({this.color, this.strokeWidth});

  Color color;
  double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = color
      ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 10)
      ..strokeWidth = strokeWidth;

    const l1 = 6;
    const t1 = 1;
    const h1 = 3.5;

    const l2 = 7.0;
    const t2 = t1 + h1;

    final path = Path()
      ..moveTo(
        size.width * 2 / 10,
        size.height * 1 / 10,
      )
      ..addOval(
        Rect.fromLTWH(
          size.width * (10 - l1) / 2 / 10,
          size.height * t1 / 10,
          size.width * l1 / 10,
          size.height * h1 / 10,
        ),
      )
      ..addOval(
        Rect.fromLTWH(
          size.width * (10 - l2) / 2 / 10,
          size.height * t2 / 10,
          size.width * l2 / 10,
          size.height * 4.5 / 10,
        ),
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
