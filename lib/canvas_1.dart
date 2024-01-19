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
      body: CustomPaint(
        painter: MasterPainter(),
        size: const Size(300, 300),
      ),
    );
  }
}

class MasterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
