import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CurlyLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1734439, size.height * 0.1968363);
    path_0.cubicTo(
        size.width * 0.4437000,
        size.height * 0.3105837,
        size.width * 0.6729848,
        size.height * 0.5179567,
        size.width * 0.8266788,
        size.height * 0.7876467);

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.3333333;
    paint_0_stroke.color = Colors.white.withOpacity(1.0);
    paint_0_stroke.strokeCap = StrokeCap.round;
    paint_0_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
