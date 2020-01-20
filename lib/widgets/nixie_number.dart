import 'package:flutter/material.dart';

import 'my_painter_0.dart';
import 'my_painter_1.dart';
import 'my_painter_2.dart';
import 'my_painter_3.dart';
import 'my_painter_4.dart';
import 'my_painter_5.dart';
import 'my_painter_6.dart';
import 'my_painter_7.dart';
import 'my_painter_8.dart';
import 'my_painter_9.dart';

class NixieStack extends StatelessWidget {
  const NixieStack({Key key, this.str}) : super(key: key);

  final String str;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <CustomPaint>[
        nixieNumber(0, isLit: false),
        if (str == '0') nixieNumber(0, isLit: true),
        nixieNumber(1, isLit: false),
        if (str == '1') nixieNumber(1, isLit: true),
        nixieNumber(2, isLit: false),
        if (str == '2') nixieNumber(2, isLit: true),
        nixieNumber(3, isLit: false),
        if (str == '3') nixieNumber(3, isLit: true),
        nixieNumber(4, isLit: false),
        if (str == '4') nixieNumber(4, isLit: true),
        nixieNumber(5, isLit: false),
        if (str == '5') nixieNumber(5, isLit: true),
        nixieNumber(6, isLit: false),
        if (str == '6') nixieNumber(6, isLit: true),
        nixieNumber(7, isLit: false),
        if (str == '7') nixieNumber(7, isLit: true),
        nixieNumber(8, isLit: false),
        if (str == '8') nixieNumber(8, isLit: true),
        nixieNumber(9, isLit: false),
        if (str == '9') nixieNumber(9, isLit: true),
      ],
    );
  }
}

CustomPaint nixieNumber(int number, {bool isLit}) {
  Color color;
  double strokeWidth;

  if (isLit) {
    color = Colors.orange;
    strokeWidth = 10.0;
  } else {
    color = Colors.grey[700];
    strokeWidth = 1;
  }

  switch (number) {
    case 0:
      return CustomPaint(
        painter: MyPainter0(color: color, strokeWidth: strokeWidth),
        child: Container(),
      );
    case 1:
      return CustomPaint(
        painter: MyPainter1(color: color, strokeWidth: strokeWidth),
        child: Container(),
      );
    case 2:
      return CustomPaint(
        painter: MyPainter2(color: color, strokeWidth: strokeWidth),
        child: Container(),
      );
    case 3:
      return CustomPaint(
        painter: MyPainter3(color: color, strokeWidth: strokeWidth),
        child: Container(),
      );
    case 4:
      return CustomPaint(
        painter: MyPainter4(color: color, strokeWidth: strokeWidth),
        child: Container(),
      );
    case 5:
      return CustomPaint(
        painter: MyPainter5(color: color, strokeWidth: strokeWidth),
        child: Container(),
      );
    case 6:
      return CustomPaint(
        painter: MyPainter6(color: color, strokeWidth: strokeWidth),
        child: Container(),
      );
    case 7:
      return CustomPaint(
        painter: MyPainter7(color: color, strokeWidth: strokeWidth),
        child: Container(),
      );
    case 8:
      return CustomPaint(
        painter: MyPainter8(color: color, strokeWidth: strokeWidth),
        child: Container(),
      );
    case 9:
      return CustomPaint(
        painter: MyPainter9(color: color, strokeWidth: strokeWidth),
        child: Container(),
      );
    default:
      return const CustomPaint();
  }
}
