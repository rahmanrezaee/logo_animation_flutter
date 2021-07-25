import 'dart:ui' as ui;

import 'package:flutter/material.dart';

// //Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class DropPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8002607, size.height * 0.4021371);
    path_0.lineTo(size.width * 0.5000000, 0);
    path_0.lineTo(size.width * 0.1997393, size.height * 0.4021371);
    path_0.cubicTo(
        size.width * 0.1533191,
        size.height * 0.4645079,
        size.width * 0.1258427,
        size.height * 0.5418270,
        size.width * 0.1258427,
        size.height * 0.6255730);
    path_0.cubicTo(
        size.width * 0.1258427,
        size.height * 0.8323640,
        size.width * 0.2933596,
        size.height,
        size.width * 0.5000000,
        size.height);
    path_0.cubicTo(
        size.width * 0.7066404,
        size.height,
        size.width * 0.8741573,
        size.height * 0.8323640,
        size.width * 0.8741573,
        size.height * 0.6255730);
    path_0.cubicTo(
        size.width * 0.8741573,
        size.height * 0.5418270,
        size.width * 0.8466809,
        size.height * 0.4645079,
        size.width * 0.8002607,
        size.height * 0.4021371);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
