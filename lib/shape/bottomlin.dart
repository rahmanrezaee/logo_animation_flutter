import 'dart:ui' as ui;

import 'package:flutter/material.dart';
// //Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.85).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class BottomLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9400000, size.height * 0.4117647);
    path_0.cubicTo(
        size.width * 0.9400000,
        size.height * 0.5241059,
        size.width * 0.9089350,
        size.height * 0.6333988,
        size.width * 0.8514950,
        size.height * 0.7231435);
    path_0.cubicTo(
        size.width * 0.7940550,
        size.height * 0.8128871,
        size.width * 0.7133580,
        size.height * 0.8782118,
        size.width * 0.6215860,
        size.height * 0.9092553);
    path_0.cubicTo(
        size.width * 0.5298130,
        size.height * 0.9402988,
        size.width * 0.4319480,
        size.height * 0.9353765,
        size.width * 0.3427630,
        size.height * 0.8952306);
    path_0.cubicTo(
        size.width * 0.2535780,
        size.height * 0.8550847,
        size.width * 0.1779150,
        size.height * 0.7818941,
        size.width * 0.1271960,
        size.height * 0.6867094);
    path_0.cubicTo(
        size.width * 0.07647660,
        size.height * 0.5915247,
        size.width * 0.05345480,
        size.height * 0.4795106,
        size.width * 0.06160570,
        size.height * 0.3675788);
    path_0.cubicTo(
        size.width * 0.06975650,
        size.height * 0.2556482,
        size.width * 0.1086380,
        size.height * 0.1498741,
        size.width * 0.1723790,
        size.height * 0.06622494);

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.1100000;
    paint_0_stroke.color = Colors.white.withOpacity(1.0);
    paint_0_stroke.strokeCap = StrokeCap.round;
    paint_0_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff000000).withOpacity(0.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
