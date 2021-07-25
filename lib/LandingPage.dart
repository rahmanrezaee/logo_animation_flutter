import 'package:flutter/material.dart';
import 'package:landing_page/shape/curlyline.dart';
import 'package:landing_page/shape/bottomlin.dart';
import 'package:landing_page/shape/plane.dart';
import 'package:landing_page/shape/drop.dart';
import 'dart:math' as math;

class LandingPage extends StatefulWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  AnimationController rotationTopLineController;
  Widget topWidget;
  Widget bottomWidget;
  @override
  void initState() {
    initAnimation();

    super.initState();
  }

  void initAnimation() {
    rotationTopLineController = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);

    topWidget = new AnimatedBuilder(
      animation: rotationTopLineController,
      child: CustomPaint(
        size: Size(
            100,
            (90 * 1)
                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: BottomLinePainter(),
      ),
      builder: (BuildContext context, Widget _widget) {
        return new Transform.rotate(
          child: _widget,
          angle: math.pi * 1 * rotationTopLineController.value,
          origin: Offset(0, 0),
        );
      },
    );
    bottomWidget = new AnimatedBuilder(
      animation: rotationTopLineController,
      child: Container(
        height: 100,
        width: 100,
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              top: -5,
              right: 3,
              child: CustomPaint(
                size: Size(
                    33,
                    (29 * 1)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: CurlyLine(),
              ),
            ),
          ],
        ),
      ),
      builder: (BuildContext context, Widget _widget) {
        return new Transform.rotate(
          child: _widget,
          angle: math.pi * 1 * rotationTopLineController.value,
          origin: Offset(2, -2),
        );
      },
    );

    rotationTopLineController.forward();
    rotationTopLineController.addListener(() {
      setState(() {
        if (rotationTopLineController.status == AnimationStatus.completed) {
          topWidget = CustomPaint(
            size: Size(
                100,
                (100 * 1)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: PlanePainter(),
          );

          bottomWidget = Transform.rotate(
            angle: 0.75,
            origin: Offset(-80, 20),
            transformHitTests: false,
            child: CustomPaint(
              size: Size(
                  50,
                  (50 * 1)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: DropPainter(),
            ),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color(0xff7E99FC),
      child: Center(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                // transitionBuilder: (child, animation) => ScaleTransition(
                //       child: child,
                //       scale: animation,
                //     ),
                child: topWidget),
            AnimatedSwitcher(
                duration: const Duration(milliseconds: 50),
                // transitionBuilder: (child, animation) => ScaleTransition(
                //       child: child,
                //       scale: animation,
                //     ),
                child: bottomWidget),
          ],
        ),
      ),
    );
  }
}
