import 'package:flutter/material.dart';

class CanvasTwo extends StatefulWidget {
  const CanvasTwo({super.key});

  @override
  State<CanvasTwo> createState() => _CanvasTwoState();
}

class _CanvasTwoState extends State<CanvasTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          height: double.maxFinite,
          width: double.maxFinite,
          'assets/image.jpg',
          color: Colors.blue,
          colorBlendMode: BlendMode.colorBurn,
        ),
      ),
    );
  }
}
