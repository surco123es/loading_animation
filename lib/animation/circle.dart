import 'dart:math';
import 'package:flutter/material.dart';

class CircleFlyOrbit extends StatefulWidget {
  final List<Color> circleColor;
  final Size size;
  final double strokeWidth, ballSize;

  const CircleFlyOrbit({
    super.key,
    this.circleColor = const [
      Color.fromARGB(255, 244, 67, 54),
      Color.fromARGB(255, 76, 175, 80),
      Color.fromARGB(255, 33, 150, 243),
      Color.fromARGB(255, 156, 39, 176),
      Color.fromARGB(255, 255, 152, 0),
      Color.fromARGB(255, 233, 30, 99),
      Color.fromARGB(255, 205, 220, 57)
    ],
    this.size = const Size(50, 50),
    this.ballSize = 5,
    this.strokeWidth = 15,
  });

  @override
  State<CircleFlyOrbit> createState() => _CircleFlyOrbitState();
}

class _CircleFlyOrbitState extends State<CircleFlyOrbit>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          painter: AnimationPaint(
            animationValue: _controller.value,
            circleColor: widget.circleColor,
            ballSize: widget.ballSize,
            strokeWidth: widget.strokeWidth,
          ),
          size: widget.size,
        );
      },
    );
  }
}

class AnimationPaint extends CustomPainter {
  final double animationValue;
  final List<Color> circleColor;
  final double strokeWidth, ballSize;

  AnimationPaint({
    required this.animationValue,
    required this.circleColor,
    required this.ballSize,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 4;
    final ballCount = circleColor.length;

    _drawOrbitPath(canvas, center, radius);
    _drawBalls(canvas, center, radius, ballCount, paint);
  }

  void _drawOrbitPath(Canvas canvas, Offset center, double radius) {
    final pathPaint = Paint()
      ..color = Colors.white.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    final path = Path()
      ..addOval(Rect.fromCircle(center: center, radius: radius));
    canvas.drawPath(path, pathPaint);
  }

  void _drawBalls(
      Canvas canvas, Offset center, double radius, int ballCount, Paint paint) {
    for (int i = 0; i < ballCount; i++) {
      final angle = 2 * pi * (i / ballCount) + (2 * pi * animationValue);
      final x = center.dx + radius * cos(angle);
      final y = center.dy + radius * sin(angle);
      paint.color = circleColor[i];
      canvas.drawCircle(Offset(x, y), ballSize, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
