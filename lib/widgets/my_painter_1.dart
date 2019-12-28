import 'package:flutter/material.dart';

class MyPainter1 extends CustomPainter {
  MyPainter1({this.color, this.strokeWidth});

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
      ..moveTo(
        size.width * 2 / 10,
        size.height * 3 / 10,
      )
      ..lineTo(
        size.width * 5 / 10,
        size.height * 1 / 10,
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
