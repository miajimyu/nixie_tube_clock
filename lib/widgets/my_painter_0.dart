import 'package:flutter/material.dart';

class MyPainter0 extends CustomPainter {
  MyPainter0({this.color, this.strokeWidth});

  Color color;
  double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = color
      ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 10.0)
      ..strokeWidth = strokeWidth;

    final Path path = Path()
      ..addOval(Rect.fromLTWH(
        size.width * 2 / 10,
        size.height * 1 / 10,
        size.width * 6 / 10,
        size.height * 8 / 10,
      ));

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
