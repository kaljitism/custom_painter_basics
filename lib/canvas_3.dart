import 'package:flutter/material.dart';

class ShaderMaskPainting extends StatefulWidget {
  const ShaderMaskPainting({super.key});

  @override
  State<ShaderMaskPainting> createState() => _ShaderMaskPaintingState();
}

class _ShaderMaskPaintingState extends State<ShaderMaskPainting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
          shaderCallback: (bounds) {
            return const RadialGradient(
              radius: 0.5,
              center: Alignment.topLeft,
              tileMode: TileMode.mirror,
              colors: [
                Colors.redAccent,
                Colors.yellowAccent,
              ],
            ).createShader(bounds);
          },
          child: const Text(
            'Hello World!',
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
