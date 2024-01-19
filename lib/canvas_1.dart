import 'package:flutter/material.dart';

class CanvasOne extends StatefulWidget {
  const CanvasOne({super.key});

  @override
  State<CanvasOne> createState() => _CanvasOneState();
}

class _CanvasOneState extends State<CanvasOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.green,
          child: CustomPaint(
            painter: MasterPainter(),
            size: const Size(300, 400),
          ),
        ),
      ),
    );
  }
}

class MasterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    Paint paint2 = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    // canvas.drawLine(Offset.zero, const Offset(300, 0), paint);
    // canvas.drawLine(const Offset(300, 0), const Offset(300, 400), paint);
    // canvas.drawLine(const Offset(300, 400), const Offset(0, 400), paint);
    canvas.translate(20, 20);
    canvas.scale(0.5);
    canvas.drawLine(const Offset(0, 400), const Offset(0, 0), paint);

    canvas.drawCircle(Offset(size.width / 2, 0), size.width / 2, paint);
    canvas.scale(0.5);
    canvas.drawRect(
        Rect.fromCenter(center: Offset.zero, width: 100, height: 600), paint);
    canvas.scale(2);
    canvas.drawRect(
        Rect.fromCircle(
            center: Offset(size.width / 2, 0), radius: size.width / 2),
        paint);
    canvas.drawRect(const Rect.fromLTRB(200, 100, 500, 400), paint);
    canvas.drawOval(const Rect.fromLTRB(200, 100, 500, 400), paint);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromCircle(
                center: Offset(size.width / 2, size.height / 2), radius: 400),
            Radius.circular(50)),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
