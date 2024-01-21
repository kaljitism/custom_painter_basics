import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class PhilosophiaLogo extends StatefulWidget {
  const PhilosophiaLogo({super.key});

  @override
  State<PhilosophiaLogo> createState() => _PhilosophiaLogoState();
}

class _PhilosophiaLogoState extends State<PhilosophiaLogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          painter: PhilosophiaPainter(),
        ),
      ),
    );
  }
}

class PhilosophiaPainter extends CustomPainter {
  final Paint _paint = Paint()
    ..color = const Color(0xff000000)
    ..strokeCap = StrokeCap.round;

  @override
  void paint(Canvas canvas, Size size) {
    final vertices = Vertices(
      VertexMode.triangles,
      [
        Offset((size.width / 2) - 5, (size.height / 2) - 100),
        Offset((size.width / 2) - 5, (size.height / 2) + 100),
        Offset((size.width / 2) + 5, (size.height / 2) + 100),
        Offset((size.width / 2) + 5, (size.height / 2) - 100)
      ],
      indices: [
        0,
        1,
        2,
        0,
        2,
        3,
      ],
      colors: [
        Colors.green,
        Colors.green,
        Colors.blue,
        Colors.blue,
      ],
    );

    Path pathLeft = Path()
      ..addOval(
        Rect.fromPoints(
          Offset((size.width / 2) - 3, (size.height / 2) - 90),
          Offset((size.width / 2) + 3, (size.height / 2) + 70),
        ),
      );
    pathLeft.close();

    Path pathRight = Path()
      ..addOval(
        Rect.fromPoints(
          Offset((size.width / 2) - 3, (size.height / 2) - 70),
          Offset((size.width / 2) + 3, (size.height / 2) + 90),
        ),
      );
    pathRight.close();

    canvas.save();

    // Vertical Axis
    canvas.clipRRect(RRect.fromRectAndRadius(
        Rect.fromPoints(
          Offset((size.width / 2) - 5, (size.height / 2) - 100),
          Offset((size.width / 2) + 5, (size.height / 2) + 100),
        ),
        const Radius.circular(3)));
    canvas.drawVertices(vertices, BlendMode.src, _paint);
    canvas.restore();
    canvas.save();

    // Horizontal Axis
    canvas.rotate(pi / 2);
    canvas.translate(-50, 0);
    canvas.clipRRect(RRect.fromRectAndRadius(
        Rect.fromPoints(
          Offset((size.width / 2) - 5, (size.height / 2) - 30),
          Offset((size.width / 2) + 5, (size.height / 2) + 30),
        ),
        const Radius.circular(3)));
    canvas.drawVertices(vertices, BlendMode.src, _paint);

    canvas.restore();
    canvas.translate(0, -50);
    canvas.save();

    // Left Wing
    canvas.rotate((3.5 * pi) / 4);
    canvas.clipPath(pathLeft);
    canvas.drawVertices(vertices, BlendMode.src, _paint);

    canvas.restore();
    canvas.save();

    // Right Wing
    canvas.rotate(0.5 * pi / 4);
    canvas.clipPath(pathRight);
    canvas.drawVertices(vertices, BlendMode.src, _paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
