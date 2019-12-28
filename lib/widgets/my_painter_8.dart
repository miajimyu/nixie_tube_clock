import 'package:flutter/material.dart';

class MyPainter8 extends CustomPainter {
  MyPainter8({this.color, this.strokeWidth});

  Color color;
  double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = color
      ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 10.0)
      ..strokeWidth = strokeWidth;

    const double L1 = 6.0;
    const double T1 = 1;
    const double H1 = 3.5;

    const double L2 = 7.0;
    const double T2 = T1 + H1;

    final Path path = Path()
      ..moveTo(
        size.width * 2 / 10,
        size.height * 1 / 10,
      )
      ..addOval(
        Rect.fromLTWH(
          size.width * (10 - L1) / 2 / 10,
          size.height * T1 / 10,
          size.width * L1 / 10,
          size.height * H1 / 10,
        ),
      )
      ..addOval(
        Rect.fromLTWH(
          size.width * (10 - L2) / 2 / 10,
          size.height * T2 / 10,
          size.width * L2 / 10,
          size.height * 4.5 / 10,
        ),
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
