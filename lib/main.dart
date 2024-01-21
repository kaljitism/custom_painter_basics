import 'package:custom_painter_basics/canvas_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CustomPainterBasics());
}

class CustomPainterBasics extends StatelessWidget {
  const CustomPainterBasics({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const CanvasTwo(),
    );
  }
}
