// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class CircleMac extends StatefulWidget {
  @override
  State<CircleMac> createState() => _CircleMac();
}

class _CircleMac extends State<CircleMac> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _animation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    )..addListener(() {
        setState(() {});
      });
    _animationController.forward().whenComplete(() {
      _animationController.repeat();
    });
  }

  @override
  void dispose() {
    _animationController.stop();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: SizedBox(
        width: 45,
        height: 45,
        child: Stack(
          children: [
            Opacity(
              opacity: .3,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: CustomPaint(
                  size: const Size(60, 60),
                  painter: SpiralBouncePainter(),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Opacity(
                opacity: .5,
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: CustomPaint(
                  size: const Size(45, 45),
                  painter: SpiralBouncePainter(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SpiralBouncePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4999598, size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.6995736,
        size.height * 0.5456081,
        size.width * 0.7928232,
        size.height * 0.7134813,
        size.width * 0.7855821,
        size.height * 0.9103925);
    path_0.cubicTo(
        size.width * 0.6388285,
        size.height * 1.012468,
        size.width * 0.4483064,
        size.height * 1.028475,
        size.width * 0.2872315,
        size.height * 0.9524614);
    path_0.cubicTo(
        size.width * 0.4615013,
        size.height * 0.8603604,
        size.width * 0.5603025,
        size.height * 0.6956242,
        size.width * 0.4999598,
        size.height * 0.5000000);
    path_0.close();

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4999598, size.height * 0.5000000);
    path_1.cubicTo(
        size.width * 0.6995736,
        size.height * 0.5456081,
        size.width * 0.7928232,
        size.height * 0.7134813,
        size.width * 0.7855821,
        size.height * 0.9103925);
    path_1.cubicTo(
        size.width * 0.6388285,
        size.height * 1.012468,
        size.width * 0.4483064,
        size.height * 1.028475,
        size.width * 0.2872315,
        size.height * 0.9524614);
    path_1.cubicTo(
        size.width * 0.4615013,
        size.height * 0.8603604,
        size.width * 0.5603025,
        size.height * 0.6956242,
        size.width * 0.4999598,
        size.height * 0.5000000);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffFF6600).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.4999598, size.height * 0.5000000);
    path_2.cubicTo(
        size.width * 0.6393113,
        size.height * 0.3500644,
        size.width * 0.8313621,
        size.height * 0.3532014,
        size.width * 0.9982299,
        size.height * 0.4579311);
    path_2.cubicTo(
        size.width * 1.013034,
        size.height * 0.6368243,
        size.width * 0.9324161,
        size.height * 0.8082368,
        size.width * 0.7855016,
        size.height * 0.9103925);
    path_2.cubicTo(
        size.width * 0.7928232,
        size.height * 0.7134813,
        size.width * 0.6995736,
        size.height * 0.5456081,
        size.width * 0.4999598,
        size.height * 0.5000000);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff9900FF).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.4999598, size.height * 0.5000000);
    path_3.cubicTo(
        size.width * 0.4396975,
        size.height * 0.3043758,
        size.width * 0.5384987,
        size.height * 0.1396396,
        size.width * 0.7127685,
        size.height * 0.04753861);
    path_3.cubicTo(
        size.width * 0.8744066,
        size.height * 0.1237130,
        size.width * 0.9835868,
        size.height * 0.2803250,
        size.width * 0.9982299,
        size.height * 0.4579311);
    path_3.cubicTo(
        size.width * 0.8313621,
        size.height * 0.3532014,
        size.width * 0.6393113,
        size.height * 0.3500644,
        size.width * 0.4999598,
        size.height * 0.5000000);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffFF0066).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.4999598, size.height * 0.5000000);
    path_4.cubicTo(
        size.width * 0.3004264,
        size.height * 0.4543919,
        size.width * 0.2071768,
        size.height * 0.2865187,
        size.width * 0.2144179,
        size.height * 0.08960746);
    path_4.cubicTo(
        size.width * 0.3610910,
        size.height * -0.01246782,
        size.width * 0.5516936,
        size.height * -0.02847490,
        size.width * 0.7127685,
        size.height * 0.04753861);
    path_4.cubicTo(
        size.width * 0.5384987,
        size.height * 0.1396396,
        size.width * 0.4396975,
        size.height * 0.3043758,
        size.width * 0.4999598,
        size.height * 0.5000000);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = Colors.yellow.withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.4999598, size.height * 0.5000000);
    path_5.cubicTo(
        size.width * 0.3606887,
        size.height * 0.6499356,
        size.width * 0.1686379,
        size.height * 0.6467986,
        size.width * 0.001689597,
        size.height * 0.5419884);
    path_5.cubicTo(
        size.width * -0.01303403,
        size.height * 0.3631757,
        size.width * 0.06758388,
        size.height * 0.1917632,
        size.width * 0.2144179,
        size.height * 0.08960746);
    path_5.cubicTo(
        size.width * 0.2071768,
        size.height * 0.2865187,
        size.width * 0.3004264,
        size.height * 0.4543919,
        size.width * 0.4999598,
        size.height * 0.5000000);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff33CC33).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.4999598, size.height * 0.5000000);
    path_6.cubicTo(
        size.width * 0.5603025,
        size.height * 0.6956242,
        size.width * 0.4615013,
        size.height * 0.8603604,
        size.width * 0.2872315,
        size.height * 0.9524614);
    path_6.cubicTo(
        size.width * 0.1255934,
        size.height * 0.8762066,
        size.width * 0.01641323,
        size.height * 0.7196750,
        size.width * 0.001770054,
        size.height * 0.5420689);
    path_6.cubicTo(
        size.width * 0.1686379,
        size.height * 0.6467986,
        size.width * 0.3606887,
        size.height * 0.6499356,
        size.width * 0.4999598,
        size.height * 0.5000000);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color.fromARGB(255, 255, 17, 0);
    canvas.drawPath(path_6, paint6Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
