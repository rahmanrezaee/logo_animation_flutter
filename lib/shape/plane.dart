import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )
//Copy this CustomPainter code to the Bottom of the File
class PlanePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9849000, size.height * 0.07480000);
    path_0.lineTo(size.width * 0.5395000, size.height * 0.9656000);
    path_0.cubicTo(
        size.width * 0.5316000,
        size.height * 0.9818000,
        size.width * 0.5184000,
        size.height * 0.9900000,
        size.width * 0.4998000,
        size.height * 0.9900000);
    path_0.cubicTo(
        size.width * 0.4975000,
        size.height * 0.9900000,
        size.width * 0.4940000,
        size.height * 0.9895000,
        size.width * 0.4894000,
        size.height * 0.9886000);
    path_0.cubicTo(
        size.width * 0.4792000,
        size.height * 0.9863000,
        size.width * 0.4709000,
        size.height * 0.9811000,
        size.width * 0.4647000,
        size.height * 0.9729000);
    path_0.cubicTo(
        size.width * 0.4584000,
        size.height * 0.9648000,
        size.width * 0.4553000,
        size.height * 0.9556000,
        size.width * 0.4553000,
        size.height * 0.9454000);
    path_0.lineTo(size.width * 0.4553000, size.height * 0.5445000);
    path_0.lineTo(size.width * 0.05440000, size.height * 0.5445000);
    path_0.cubicTo(
        size.width * 0.04420000,
        size.height * 0.5445000,
        size.width * 0.03500000,
        size.height * 0.5414000,
        size.width * 0.02690000,
        size.height * 0.5351000);
    path_0.cubicTo(
        size.width * 0.01880000,
        size.height * 0.5288000,
        size.width * 0.01360000,
        size.height * 0.5206000,
        size.width * 0.01120000,
        size.height * 0.5104000);
    path_0.cubicTo(
        size.width * 0.008900000,
        size.height * 0.5002000,
        size.width * 0.009800000,
        size.height * 0.4904000,
        size.width * 0.01400000,
        size.height * 0.4812000);
    path_0.cubicTo(
        size.width * 0.01820000,
        size.height * 0.4719000,
        size.width * 0.02490000,
        size.height * 0.4650000,
        size.width * 0.03420000,
        size.height * 0.4603000);
    path_0.lineTo(size.width * 0.9250000, size.height * 0.01490000);
    path_0.cubicTo(
        size.width * 0.9310000,
        size.height * 0.01170000,
        size.width * 0.9378000,
        size.height * 0.01000000,
        size.width * 0.9452000,
        size.height * 0.01000000);
    path_0.cubicTo(
        size.width * 0.9577000,
        size.height * 0.01000000,
        size.width * 0.9682000,
        size.height * 0.01440000,
        size.width * 0.9765000,
        size.height * 0.02320000);
    path_0.cubicTo(
        size.width * 0.9834000,
        size.height * 0.02970000,
        size.width * 0.9877000,
        size.height * 0.03770000,
        size.width * 0.9894000,
        size.height * 0.04720000);
    path_0.cubicTo(
        size.width * 0.9910000,
        size.height * 0.05680000,
        size.width * 0.9895000,
        size.height * 0.06600000,
        size.width * 0.9849000,
        size.height * 0.07480000);
    path_0.lineTo(size.width * 0.9849000, size.height * 0.07480000);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
